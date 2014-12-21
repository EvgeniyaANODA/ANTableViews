Pod::Spec.new do |spec|
  spec.name     = 'ANTableViews'
  spec.version  = '1.0'
  spec.license  = { :type => 'MIT' }
  spec.homepage = 'https://github.com/anodamobi/ANTableViews'
  spec.authors  = { 'Oksana Kovalchuk' => 'oksana@anoda.mobi' }
  spec.summary  = 'Base classes for UITableView and related views'
  spec.source   = { :git => 'https://github.com/anodamobi/ANTableViews.git', :tag => '1.0' }

  spec.source_files = "Reusable/*.{h,m}", "TableView/*.{h,m}"

  spec.public_header_files = "Reusable/*.h", "TableView/*.h"

  spec.framework = "Foundation", "UIKit"
  spec.requires_arc = true

  spec.dependency 'ANCategories', '~> 1.0'
  spec.dependency 'ANHelperFunctions', '~> 1.0'
end