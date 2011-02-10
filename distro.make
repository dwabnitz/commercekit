; This file describes the core project requirements for building commerce 7.x. Several
; patches against Drupal core and their associated issue numbers have been
; included here for reference. BuildKit distribution is used as base.
;
; Use this file to build a full distro including Drupal core (with patches) and
; the commerce install profile using the following command:
;
;     $ drush make distro.make [directory]

api = 2
core = 7.x

projects[drupal][type] = core

; Make system directories configurable to allow tests in profiles/[name]/modules to be run.
; http://drupal.org/node/911354
projects[drupal][patch][911354] = http://drupal.org/files/issues/911354.43.patch

; Missing drupal_alter() for text formats and filters
; http://drupal.org/node/903730
projects[drupal][patch][903730] = http://drupal.org/files/issues/drupal.filter-alter.82.patch

; Use vocabulary machine name for permissions
; http://drupal.org/node/995156
projects[drupal][patch][995156] = http://drupal.org/files/issues/995156-5_portable_taxonomy_permissions.patch

; Add commercekit to the full Drupal distro build
projects[commercekit][type] = profile
projects[commercekit][download][type] = git
projects[commercekit][download][url] = git://github.com/dwabnitz/commercekit.git