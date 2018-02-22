#
# Cookbook:: default
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'default::chef'
include_recipe 'default::repos'
include_recipe 'default::packages'
include_recipe 'default::docker'
