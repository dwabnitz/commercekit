; Include Build Kit install profile makefile via URL
includes[buildkit] = http://drupalcode.org/viewvc/drupal/contributions/profiles/buildkit/drupal-org.make?view=co&pathrev=DRUPAL-7--2

; add any additional projects or overrides
projects[addressfield][subdir] = contrib
projects[addressfield][version] = 1.0-alpha1

projects[entity][subdir] = contrib
projects[entity][version] = 1.0-beta1

projects[rules][subdir] = contrib
projects[rules][version] = 2.0-alpha2

projects[commerce][subdir] = contrib
projects[commerce][type] = module
projects[commerce][download][type] = git
projects[commerce][download][url] = git://github.com/rszrama/drupalcommerce.git
