
## Primary Key কী?

**Primary Key** হলো একটি কলাম (বা কলামের কম্বিনেশন) যা প্রতিটি সারিকে (row) uniquely identify করে।


### বৈশিষ্ট্যসমূহ:

- **Unique** মান থাকতে হবে (duplicate হবে না)।
- **NULL** মান থাকা যাবে না।
- প্রতিটি টেবিলে **মাত্র একটি primary key** থাকতে পারে।

### কেন প্রাইমারি কি দরকার?

- টেবিলের প্রতিটি row-কে uniquely identify করতে ।
- সার্চিং, আপডেট ও ডিলিট করার সময় নির্ভুলভাবে row সিলেক্ট করতে।
- টেবিলের integrity বজায় রাখতে।

**Example:**

```sql
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT
);
-- এখানে student_id হলো প্রাইমারি কি — প্রতিটি শিক্ষার্থীর জন্য ইউনিক আইডি।
```





## Foreign Key কী?

**Foreign Key** হলো এমন একটি কলাম যা অন্য টেবিলের  primary key কে রেফারেন্স করে। এটি **দুইটি টেবিলের মধ্যে সম্পর্ক (relationship)** তৈরি করে।

### বৈশিষ্ট্যসমূহ:

- এটি একটি constraint যা নিশ্চিত করে যে, ফিল্ডের মান রেফারেন্স টেবিলে **অবশ্যই বিদ্যমান থাকতে হবে**।
- মূলত রিলেশন তৈরি করতে এবং ডেটা integrity বজায় রাখতে ব্যবহৃত হয়।

### কেন Foreign Key দরকার?

- দুইটি টেবিলের মধ্যে সম্পর্ক **(relation)** স্থাপন করতে।
- রেফারেন্স ডেটা নিশ্চিত করতে (যেন ভুল বা অব্যবহৃত আইডি না আসে)।
- Data consistency বজায় রাখতে।

```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    amount DECIMAL
);
-- এখানে student_id হলো foreign key যা students টেবিলের student_id কে রেফারেন্স করে।
```

### **কখন কোনটা ব্যবহার করবো?**

| প্রয়োজন | ব্যবহার করুন |
| --- | --- |
| টেবিলের প্রতিটি row আলাদা করে চিনতে | **Primary Key** |
| একাধিক টেবিলের মধ্যে সম্পর্ক তৈরি করতে | **Foreign Key** |
| ডেটা integrity নিশ্চিত করতে | দুটোই প্রয়োজন |
