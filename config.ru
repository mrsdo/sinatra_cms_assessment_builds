# frozen_string_literal: true

require './config/environment'

use Rack::MethodOverride
run ApplicationController
# use RoleController
use UsersController
# use ListingsController

