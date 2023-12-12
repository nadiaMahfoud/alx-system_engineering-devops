# Puppet manifest to update a specific line in a file on a server

# Define the path to the file that needs modification
$file_to_edit = '/var/www/html/wp-settings.php'

# Use the 'sed' command to replace the line containing "phpp" with "php" in the specified file
exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin','/usr/bin']
}
