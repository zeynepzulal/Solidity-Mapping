// SPDX-License-Identifier:MIT

  pragma solidity ^0.8.17;

  contract Mapping {
      /*
      mapping(keyType => valueType)
      
       {
           name: zeynep
           address: uint
       }

      */
      mapping(address => uint) public myMap; //mapping de bir veri tipi gibi.
      function setValue(uint _value) public {
          myMap[msg.sender] = _value;
      }

      function getValue(address _addr) public view returns(uint){
          return myMap[_addr];
      }
      





      
      /* 
        Bir online ürünler satan mağaza için akıllı bir sözleşme oluşturuyorsunuz 
        ve satışa sunulan ürünleri fiyatlariyla takip etmeniz gerekiyor. 
        Bu bilgiyi mapping kullanarak smart contractinizda depolayin. 
        Ürün idlerini ve ücretlerini depolamaniz bekleniyor.

        mapping ?
        addProduct function
        getPrice function
    */

    mapping(uint => uint) public myProducts; 

    function addProduct(uint productId, uint price) public { // mapping sayesinde id yi price a bagladik yani id girilince price i aliyoruz,görebiliyoruz.
        myProducts[productId] = price; 
    }
    function getPrice(uint productId) public view returns(uint){
        return myProducts[productId];
    }
    function remove(uint productId) public{
        delete myProducts[productId]; //  default value yani 0 olarak resetledi.
    }


    //nested mapping
     mapping(address => mapping(uint => uint)) public myProducts2;

    function addProduct2(uint productId2, uint price2) public {
        myProducts2[msg.sender][productId2] = price2; 
    }
    function getPrice2(uint productId2) public view returns(uint){
        return myProducts2[msg.sender][productId2];
    }
    function remove2(uint productId2) public{
        delete myProducts2[msg.sender][productId2]; //  default value yani 0 olarak resetledi.
    }
  
  }