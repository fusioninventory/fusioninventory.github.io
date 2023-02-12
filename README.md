# FusionInventory website

This reporitory is used to manage the website.

It use Jekyll

# Translation

To translate the website on your language, follow this procedure:

* fork the repository
* add your lang part in the files:
  * *_data/navigation.yml*
  * *_data/sitetext.yml*
* create a flag images in *assets/img/locale/* with the help of the file *World_flasgs_68.png*
* in file *_includes/navheader.html*, add the part like:
```
          <li class="nav-item">
            <a class="nav-flag js-scroll-trigger" href="index.fr.html">
              <img src="assets/img/locale/fr.png">
            </a>
          </li>
```

# Dependancies installation

You need have ruby installed on your system.

Run the command:

```
bundle install
```

# Live preview

To have live preview, run this command:

```
bundle exec jekyll serve
```


# Build the website


TO build the website, run this command:

```
bundle exec jekyll build

```



