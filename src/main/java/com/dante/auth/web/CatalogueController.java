package com.dante.auth.web;

import com.dante.auth.model.Catalogue;
import com.dante.auth.repository.CategoryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class CatalogueController {

    @Autowired
    private CategoryRepo categoryRepo;

    @GetMapping("/catalogue")
    public String getlist(Model model){
        model.addAttribute("listCategory",categoryRepo.findAll());
        return "catalogueList";
    }
    @GetMapping("/catalogue/form")
    public String getForm(Model model,@RequestParam(value = "idCatalogue",required = false)Integer id){
        Catalogue catalogue;
        if(id !=null && categoryRepo.getOne(id) != null){
            catalogue = categoryRepo.getOne(id);
        }else{
            catalogue = new Catalogue();
        }
        model.addAttribute("catalogue",catalogue);
        return "catalogueForm";
    }
    @GetMapping("/delete")
    public RedirectView delete(@RequestParam("idCatalogue")Integer id){
        Catalogue catalogue = categoryRepo.getOne(id);
        if(catalogue !=null){
            categoryRepo.deleteById(id);
        }
        return new RedirectView("/catalogue", true);
    }

    @PostMapping("/save/catalogue")
    public RedirectView save(@RequestParam(value = "idCatalogue",required = false) Integer id,@RequestParam("ten")String ten,@RequestParam("chitiet")String chiTiet){
        Catalogue catalogue;
        if(id !=null){
            catalogue = categoryRepo.getOne(id);
        }else{
            catalogue = new Catalogue();
        }
        catalogue.setTen(ten);
        catalogue.setChitiet(chiTiet);
        categoryRepo.save(catalogue);

        return new RedirectView("/catalogue", true);
    }
    @GetMapping("/catagory/{idCatalogue}/edit")
    public String update(@PathVariable("idCatalogue") int id,Model model){
        model.addAttribute("catalogue",categoryRepo.getOne(id));
        return "catalogueForm";
    }

}
