# Cookbook Name:: vs_code
# Spec:: default
#
# Copyright (c) 2016 Sean Escriva
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
require 'spec_helper'

RSpec.describe 'vs_code::default' do
  context 'on Windows' do
    include_context 'windows-2012r2'

    it 'includes the windows recipe' do
      expect(chef_run).to include_recipe('vs_code::windows')
    end
  end

  context 'on Mac OS X' do
    include_context 'mac_os_x-10.10'

    it 'includes the mac_os_x recipe' do
      expect(chef_run).to include_recipe('vs_code::mac_os_x')
    end
  end
end
