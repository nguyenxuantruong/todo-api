# Todos List APIs Documentation

####API Endpoint####
[http://172.16.126.92:3005](http://172.16.126.92:3005)

**Summary of Resource URL Patterns**

<a name='items-list-header'></a>List all items:
[GET: /v1/items  ]()

<a name='post-item-header'></a>Create new items:
[POST: /v1/items  ]()

<a name='update-item-header'></a>Update an items:
[PUT: /v1/items/:id  ]()

<a name='delete-item-header'></a>Delete an items:
[DELETE: /v1/items/:id  ]()

###LIST ALL ITEMS##

---

API endpoints to get the list of items

[GET: /v1/items ]()


: Get the list of items

**Required HEADER parameters**

* **Content-Type: string** - specialed content-type for header request.

**Required FORM Parameters**

* **auth_token:string (required)** - authentication token.

###CREATE A NEW ITEM##

---

API endpoints to create new item

[POST: /v1/items]()
: create new item

**Required HEADER parameters**

* **Content-Type: string** - specialed content-type for header request.

**Required FORM Parameters**

* **auth_token:string (required)** - authentication token.
* **text:string (required)** - item content.
* **completed:boolean (required)** - status of content.

###UPDATE AN ITEM##

---

API endpoints to update an item

[PUT: /v1/items/:id](#abc)
: update an item

**Required HEADER parameters**

* **Content-Type: string** - specialed content-type for header request.

**Required FORM Parameters**

* **auth_token:string (required)** - authentication token.
* **text:string (required)** - item content.
* **completed:boolean (required)** - status of content.

###DELETE AN ITEM##

---

API endpoints to delete an item

[DELETE: /v1/items/:id]()
: delete an item

**Required HEADER parameters**

* **Content-Type: string** - specialed content-type for header request.

**Required FORM Parameters**

* **auth_token:string (required)** - authentication token.
