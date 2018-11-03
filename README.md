# cv-from-md
This is a simple `pandoc` one-liner to create a nicely formatted, simple HTML CV from a markdown document, based on an amended version of the excellent css from the [dashed gist](https://gist.github.com/dashed/6714393).

You don't need to have `pandoc` installed, as a Docker container is used instead.

From the included example `cv.md` you can see how the different headering are generated. Two `####` headings on subsequent lines, will be interpreted as a 'job' from your experience list, and will be rendered accordingly. The rest of the headings are fairly straight forward.

## Prerequisites
* Docker
* git

## Usage
* Clone the repository, and `cd` into the directory.
* `chmod +x build.sh`
* Update the `cv.md` with all of your info
* `./build.sh`
* `cv.html` and `style.css` files will be generated inside the repository folder on your host machine.

## Example input MD

```
# A Person

###### a.person@example.com | github: github_id | 07xxx xxx xxx | City

I'm a human.

## Skills
* Doing things
* Lists

## Experience

#### June 2017 - present
#### Senior Thing Does - Another company
* Did some more senior stuff

#### January 2015 - June 2017
#### Thing Doer - A nice company
* Did some stuff
* Did some other stuff


## Qualifications / Awards / Certifications
* Doing Things BEng (hons), University of Life
* Professional Certification in proprietary thing doing software

## Other Interests
In my spare time I enjoy thinking about things. 
```


