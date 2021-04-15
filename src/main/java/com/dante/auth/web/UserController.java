package com.dante.auth.web;

import com.dante.auth.model.CatagoryMenu;
import com.dante.auth.model.Catalogue;
import com.dante.auth.model.Menu;
import com.dante.auth.model.User;
import com.dante.auth.repository.CategoryMenuRepo;
import com.dante.auth.repository.CategoryRepo;
import com.dante.auth.repository.MenuRepository;
import com.dante.auth.service.SecurityService;
import com.dante.auth.service.UserService;
import com.dante.auth.validator.PhotoUploadUtil;
import com.dante.auth.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @Autowired
    private MenuRepository menuRepo;
    @Autowired
    private CategoryRepo categoryRepo;

    @Autowired
    private CategoryMenuRepo categoryMenuRepo;

    public static String uploadDirectory = System.getProperty("user.dir") + "/user-photos";

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/home";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @GetMapping({"/welcome"})
    public String welcome(Model model) {
        return "welcome";
    }

    @GetMapping({"/admin","/home"})
    public String admin(Model model) {
        return "admin";
    }

    @GetMapping({ "/"})
    public String home(Model model) {

        List<Catalogue> listCatalogues = categoryRepo.findAll();
        for (Catalogue catalogue:listCatalogues) {
            List<Menu> listMenu = new ArrayList<>();
            List<CatagoryMenu> catagoryMenu = categoryMenuRepo.listItemCategory(catalogue.getIdCatalogue());
            for (CatagoryMenu catagoryMenu1: catagoryMenu) {
                Menu menu = menuRepo.getOne(catagoryMenu1.getIdMenu());
                listMenu.add(menu);
            }
            for (Menu menu:listMenu) {
                String[] mota = menu.getDescription().split("\\r?\\n");
                menu.setMota(mota);
            }
            catalogue.setMenuList(listMenu);
        }

        model.addAttribute("listCatalogues",listCatalogues);
//        model.addAttribute("listMenu", listMenu);
        return "home";
    }

    @PostMapping("/save/menu")
    public RedirectView saveMenu(@RequestParam("photos") MultipartFile multipartFile, @RequestParam("title") String title,@RequestParam(value = "id",required = false) Integer id,
                                 @RequestParam("description") String description, @RequestParam("idCatalogue") int catelogueId,@RequestParam(value = "price",required = false) int price) throws IOException {
        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
        Menu menu ;
        CatagoryMenu catagoryMenu;
        if(id == null){
            catagoryMenu = new CatagoryMenu();
            menu = new Menu();
            List<Menu> menuList = menuRepo.findAll();
            if(menuList != null){
                catagoryMenu.setIdMenu(menuList.size() + 1);
            }
        }else{
            menu = menuRepo.getOne(id);
            catagoryMenu = categoryMenuRepo.itemCategory(id);
        }

        menu.setTitle(title);
        menu.setDescription(description);
        menu.setPhotos(fileName);
        menu.setPrice(price);

        catagoryMenu.setIdCatagory(catelogueId);
        Menu menuSave = menuRepo.save(menu);
        categoryMenuRepo.save(catagoryMenu);

        String uploadDir = "user-photos/";

        PhotoUploadUtil.savePhoto(uploadDir, fileName, multipartFile);

        return new RedirectView("/menu/list", true);
    }

    @GetMapping("/save")
    public String callFormMenu(Model model) {
        Menu menu = new Menu();
        List<Catalogue> catalogueList = categoryRepo.findAll();
        for (Catalogue catalogue:catalogueList) {
            menu.setIdCatalogue(catalogue.getIdCatalogue());
        }
        menu.setCatalogueList(catalogueList);
        model.addAttribute("menu", menu);
        return "menuForm";
    }

    @GetMapping("/menu/list")
    public String listAllMenu(Model model) {
        List<Menu> listMenu = new ArrayList<>();
        listMenu = menuRepo.findAll();
        for (Menu menu:listMenu) {
            String[] mota = menu.getDescription().split("\\r?\\n");

            CatagoryMenu catagoryMenu = categoryMenuRepo.itemCategory(menu.getId());
            if(catagoryMenu != null){
                Catalogue catalogue = categoryRepo.getOne(catagoryMenu.getIdCatagory());
                if(catalogue != null){
                    menu.setCategory(catalogue.getTen());
                }
            }
            menu.setMota(mota);
        }
        model.addAttribute("listMenu", listMenu);
        return "menuList";
    }

    @GetMapping("getImage/{photo}")
    @ResponseBody
    public ResponseEntity<ByteArrayResource> getImage(@PathVariable("photo") String photo) {
        if (!photo.equals("") || photo != null) {
            try {
                Path fileName = Paths.get("user-photos", photo);
                byte[] buffer = Files.readAllBytes(fileName);
                ByteArrayResource byteArrayResource = new ByteArrayResource(buffer);
                return ResponseEntity.ok().contentLength(buffer.length).contentType(MediaType.parseMediaType("image/png"))
                        .body(byteArrayResource);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return ResponseEntity.badRequest().build();
    }

    @GetMapping(value = "menu/delete/{menuId}")
    public RedirectView deleteMenuById(@PathVariable("menuId") Integer menuId){
        if(menuRepo.findById(menuId) != null){
            menuRepo.deleteById(menuId);
        }
        return new RedirectView("/menu/list", true);
    }

    @GetMapping(value = "/menu/{id}/edit")
    public String edit(@PathVariable("id") int id, Model model){
        Menu menu = menuRepo.getOne(id);

        if(menu != null){
            List<Catalogue> catalogueList = categoryRepo.findAll();
            for (Catalogue catalogue:catalogueList) {
                menu.setIdCatalogue(catalogue.getIdCatalogue());
            }
            menu.setCatalogueList(catalogueList);
            model.addAttribute("menu",menu);
        }
        return "menuForm";
    }
}
