package kh.com.c.model;

import java.io.Serializable;

/*
 * 
DROP TABLE CUSTOMER
CASCADE CONSTRAINTS;

DROP SEQUENCE  SEQ_CUSTOMER;


CREATE TABLE CUSTOMER(
   SEQ NUMBER(8) PRIMARY KEY,
   STORE VARCHAR2(100) NOT NULL,
   C_NAME VARCHAR2(50) NOT NULL,
   DETAIL VARCHAR2(4000),
   STAR NUMBER(1) NOT NULL
   
   );

CREATE SEQUENCE SEQ_CUSTOMER
START WITH 1 INCREMENT BY 1;

ALTER TABLE CUSTOMER
ADD CONSTRAINT FK_CUSTOMER_STORE FOREIGN KEY(STORE)
REFERENCES MEMBER(STORE);   


 * */

public class CustomerDto implements Serializable{
   
   private int seq;
   private String store;
   private String c_name;
   private String detail;
   private int star;
   
   public CustomerDto() {}

   public CustomerDto(int seq, String store, String c_name, String detail, int star) {
      super();
      this.seq = seq;
      this.store = store;
      this.c_name = c_name;
      this.detail = detail;
      this.star = star;
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

   public String getC_name() {
      return c_name;
   }

   public void setC_name(String c_name) {
      this.c_name = c_name;
   }

   public String getDetail() {
      return detail;
   }

   public void setDetail(String detail) {
      this.detail = detail;
   }

   public int getStar() {
      return star;
   }

   public void setStar(int star) {
      this.star = star;
   }

   @Override
   public String toString() {
      return "CustomerDto [seq=" + seq + ", store=" + store + ", c_name=" + c_name + ", detail=" + detail + ", star="
            + star + "]";
   }

   
   
   
   

}