require 'spec_helper'

describe 'apache', :type => 'class' do

  context "On a Debian OS with no package name specified" do
    let :facts do
      {
        :osfamily => 'Debian'
      }
    end

    it { is_expected.to compile.with_all_deps }

    it {
      should contain_package('httpd').with( { 'name' => 'apache2' } )
      should contain_service('httpd').with( { 'name' => 'apache2' } )
    }
  end

end
