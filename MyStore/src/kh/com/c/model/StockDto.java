package kh.com.c.model;

import java.io.Serializable;

/*
DROP TABLE STOCK
CASCADE CONSTRAINTS;

DROP SEQUENCE  SEQ_STOCK;

CREATE TABLE STOCK(
   SEQ NUMBER(8) PRIMARY KEY,
   STORE VARCHAR2(100) NOT NULL,
   AMOUNT NUMBER(8)  NOT NULL,
   PRODUCT VARCHAR2(50) NOT NULL,
   PRICE  NUMBER(8)  NOT NULL
   );

CREATE SEQUENCE SEQ_STOCK
START WITH 1 INCREMENT BY 1;

ALTER TABLE STOCK
ADD CONSTRAINT FK_STOCK_STORE FOREIGN KEY(STORE)
REFERENCES MEMBER(STORE);   */


public class StockDto implements Serializable {
   
   private int seq;
   private String store;
   private int amount;
   private String product;
   private int price;
   
   public StockDto() {}
   
   
   public StockDto(int seq, String store, int amount, String product, int price) {
      super();
      this.seq = seq;
      this.store = store;
      this.amount = amount;
      this.product = product;
      this.price = price;
   }


   public int getSeq() {
      return seq;
   }


   public void setSeq(int seq) {
      this.seq = seq;
   }


   public String getStore() {
      return store;
   }


   public void setStore(String store) {
      this.store = store;
   }


   public int getAmount() {
      return amount;
   }


   public void setAmount(int amount) {
      this.amount = amount;
   }


   public String getProduct() {
      return product;
   }


   public void setProduct(String product) {
      this.product = product;
   }


   public int getPrice() {
      return price;
   }


   public void setPrice(int price) {
      this.price = price;
   }


  


   @Override
   public String toString() {
      return "StockDto [seq=" + seq + ", store=" + store + ", amount=" + amount + ", product=" + product + ", price="
            + price + "]";
   }


   
   
   
 
   

}