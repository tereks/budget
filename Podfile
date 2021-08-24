# Uncomment the next line to define a global platform for your project
source 'https://github.com/CocoaPods/Specs.git'

workspace 'BudgetHolder'
platform :ios, '13.0'

def resourceGen
    pod 'R.swift'
end

def dependencyManager
    pod 'Dip'
end

def database
    pod 'RealmSwift'
end

def logger
    pod 'SwiftyBeaver'
end

def autolayout
    pod 'TinyConstraints'
end

def table
    pod 'AloeStackView'
end

target 'BudgetHolder' do
  use_frameworks!

  resourceGen
  dependencyManager
  database
  logger
  autolayout
  table

  target 'BudgetHolderTests' do
    inherit! :search_paths
  end

  target 'BudgetHolderUITests' do
  end
end
