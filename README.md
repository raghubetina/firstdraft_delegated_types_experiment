# README

![Domain Model](erd.png?raw=true "Domain Model")

```
rails generate draft:devise user username:string:uniq name:string

rails generate draft:scaffold idea user:references name:string:uniq ancestry:string:index description:text priivate:boolean

rails generate draft:scaffold model idea:references name:string classified:string plural:string singular:string underscored:string

rails generate draft:scaffold model/column name:string data_type:references{polymorphic} model:references
```
