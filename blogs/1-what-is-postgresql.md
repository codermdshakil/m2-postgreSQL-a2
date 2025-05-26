
## 1. PostgreSQL কী?

**PostgreSQL** একটি **open-source, object-relational database management system (ORDBMS)**।  
এটি ডেটা সংরক্ষণ, পরিবর্তন ও প্রশ্ন করার জন্য ব্যবহৃত হয় এবং SQL (Structured Query Language) ব্যবহার করে।

### PostgreSQL কবে তৈরি হয়েছে?

- PostgreSQL-এর ইতিহাস শুরু হয় **1986 সালে**।
- এটি তৈরি করা হয়েছিল একটি গবেষণা প্রকল্প হিসেবে — নাম ছিল **POSTGRES**।
- এর পরবর্তী সংস্করণ, **PostgreSQL 1.0**, প্রকাশিত হয় **1996 সালে**।


### PostgreSQL কে তৈরি করেছে?

- **Professor Michael Stonebraker** এবং তাঁর দল এটি তৈরি করেন।
- তাঁরা **University of California, Berkeley**তে POSTGRES প্রকল্পে কাজ করতেন।


### PostgreSQL কেন তৈরি করা হয়েছে? 

PostgreSQL তৈরি করার মূল উদ্দেশ্য ছিল:

1. **Object-oriented features যুক্ত করা:**
    
    তখনকার ডেটাবেইস সিস্টেমগুলো শুধু রিলেশনাল ছিল। POSTGRES তৈরি করা হয়েছিল যেন **custom data types, inheritance, functions** ইত্যাদি object-oriented feature ব্যবহার করা যায়।
    
2. **Extensibility**
    
    PostgreSQL এমনভাবে তৈরি হয়েছে যেন ইউজাররা নিজেদের **functions, data types, operators** ইত্যাদি বানিয়ে ব্যবহার করতে পারেন।
    
3. **ACID compliance:**
    
    অর্থাৎ ডেটা সুরক্ষা, consistency, এবং reliability নিশ্চিত করা।
    
4. **Limitations of existing RDBMS:**
    
    পূর্বের অনেক রিলেশনাল ডেটাবেইস সিস্টেম (যেমন: Oracle, MySQL ইত্যাদি) কিছু সীমাবদ্ধতা নিয়ে কাজ করত, যেমন:
    
    - কম কাস্টমাইজেশন  
    - কম extensibility  
    - object-oriented ধারণার অভাব  

    PostgreSQL এই সমস্যা সমাধান করতে সক্ষম।
