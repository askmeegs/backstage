#!/bin/bash

# Copyright 2023 The Backstage Authors
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

set -e

SCRIPT_DIR=$(dirname $0)
BACKSTAGE_CLI_DIR="$SCRIPT_DIR"/..
ADMIN_WEB_DIR="$BACKSTAGE_CLI_DIR"/../admin-web

echo "🚚 Copying admin-web into dist/admin-web"
rm -rf "$BACKSTAGE_CLI_DIR"/dist/admin-web
cp -r "$ADMIN_WEB_DIR"/dist "$BACKSTAGE_CLI_DIR"/dist/admin-web
echo "🏁 Finished copying admin-web into dist/admin-web!"
