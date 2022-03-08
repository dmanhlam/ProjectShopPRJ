/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author admin
 */
@Builder
@Getter
@Setter
@ToString

public class Product {
    private int id;
    private String name;
    private int quantity;
    private int oldprice;
    private int price;
    private String description;
    private String imageUrl;
    private String createdDate;
    private int categoryId;

    public Product() {
    }

    public Product(int id, String name, int quantity, int oldprice, int price, String description, String imageUrl, String createdDate, int categoryId) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.oldprice = oldprice;
        this.price = price;
        this.description = description;
        this.imageUrl = imageUrl;
        this.createdDate = createdDate;
        this.categoryId = categoryId;
    }

   

    
}
