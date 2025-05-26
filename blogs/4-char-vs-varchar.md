
## 1. CHAR (Character)

**CHAR(N)** মানে হলো Fixed-Length character string।

যদি আপনি `CHAR(10)` দেন, তাহলে PostgreSQL **প্রতিটি ভ্যালুর দৈর্ঘ্য ১০ অক্ষর** করে রাখবে।

### বৈশিষ্ট্য:

- Fixed size: যদি কম অক্ষর দেন, তখন বাকি জায়গা **space দিয়ে পূরণ** হবে।
- Performance: ফিক্সড সাইজ হওয়ায় কিছু ক্ষেত্রে একটু দ্রুত কাজ করতে পারে।

```sql
CREATE TABLE employees (
emp_code CHAR(5)
);

INSERT INTO employees VALUES ('AB');

-- এটা আসলে হয়ে যাবে 'AB   '
```

## 2. VARCHAR (Variable Character)

**VARCHAR(N)** মানে হলো Variable-Length character string।

যদি আপনি `VARCHAR(50)` দেন, তাহলে আপনি সর্বোচ্চ ৫০ অক্ষর পর্যন্ত দিতে পারবেন।

### বৈশিষ্ট্য:

- Variable size: যতটুকু দরকার ততটুকু জায়গা নেয়।
- Storage efficient: অপ্রয়োজনীয় space ব্যবহার করে না।
- এটি 225  টি পর্যন্ত character container করতে পারে তার পরে 225 বেশি হলে আমাদের `text` ব্যাবহার করতে হবে।

```sql
CREATE TABLE customers (
    name VARCHAR(50)
);

INSERT INTO customers VALUES ('Rakib');
-- এখানে শুধু 'Rakib' স্টোর হবে, কোনো বাড়তি স্পেস না
```

## কখন কোনটা ব্যবহার করবো?

### CHAR ব্যাবহার করব -

- ফিক্সড লেন্থের ডেটা (যেমন: পোস্টাল কোড, দেশ কোড, PIN, status code ইত্যাদি)।
- যেসব ফিল্ডে সবসময় একই সাইজের ভ্যালু থাকবে।

### VARCHAR ব্যাবহার করব -

- ভিন্ন ভিন্ন দৈর্ঘ্যের text রাখতে হবে (যেমন: নাম, ঠিকানা, ইমেইল)।
- স্টোরেজ বাঁচাতে চান।
- ইউজারের ইনপুটের দৈর্ঘ্য নিশ্চিত না।
- যখন আমাদের  225 character এর মধ্যে string দরকার তখন ।