.. NTU VOIP lab

==========
OPNFV Fuel Stable Iruya
==========

|docs|

.. |docs| image:: https://readthedocs.org/projects/opnfv-fuel/badge/?version=latest
    :alt: OPNFV Fuel Documentation Status
    :scale: 100%
    :target: https://opnfv-fuel.readthedocs.io/en/latest/?badge=latest

Description
===========

This is the OPNFV Iruya release that implements the deploy stage of the
OPNFV CI pipeline via Fuel.

Fuel is based on the `MCP`_ installation tool chain.
More information available at `Mirantis Cloud Platform Documentation`_.

The goal of the Fuel deployment process is to establish a lab ready platform
accelerating further development of the OPNFV infrastructure.

Release Notes
=============

- `OPNFV Fuel Release Notes on RTD`_

Scenarios
=========

- `OPNFV Fuel Scenarios on RTD`_

Installation
============

- `OPNFV Fuel Installation Instruction on RTD`_
- Installation instruction:
    $ sudo mkdir -p -m 777 tmpdir (Create the folder your want to install opnfv)
    
    $ git clone https://github.com/DOTXV/OPNFV-Stable-Iruya.git
    
    $ cd ~/fuel
    
    $ sudo git checkout opnfv-9.0.0
    
    $ sudo ci/deploy.sh -l ericsson -p virtual1 -s os-odl-sfc-noha -D -S ~/tmpdir |& sudo tee deploy.log
- The above instruction use "os-odl-sfc-noha" as example, users can choose the scenarios.

- Uninstallation instruction:
    $ cd tmpdir (The folder you installed opnfv)
    
    $ sudo rm -rf *
    
    $ virsh destroy ctl01
    
    $ virsh destroy cmp001
    
    $ virsh destroy cmp002
    
    $ virsh destroy gtw01
    
    $ virsh destroy odl01
    
    $ sudo docker container stop fuel
    
    $ sudo docker container rm fuel
    
    $ sudo docker network rm docker-compose_mcpcontrol
    
    $ sudo docker network rm docker-compose_mgmt
    
    $ sudo docker network rm docker-compose_pxebr
    
    
Bug fixed
=========

- https://hackmd.io/@benkajaja/S1jvIOlMI/%2FG2-NqDUVSoCYcWx2MuEyWg?fbclid=IwAR39PAed-LifRME_x3zDyfljlkS3UjT6kVmSG8jP8zzPc0aW2aNfjUWYWR0


Usage
=====

- `OPNFV Fuel User Guide on RTD`_

Contributing
============

- `OPNFV Fuel Contributing`_

Support
=======

- `OPNFV Fuel Wiki Page`_
- `OPNFV Community Support mailing list`_
- `OPNFV Technical Discussion mailing list`_

Open Platform for NFV Project Software Licence
----------------------------------------------

| Any software developed by the "Open Platform for NFV" Project is licenced under the
| Apache License, Version 2.0 (the "License");
| you may not use the content of this software bundle except in compliance with the License.
| You may obtain a copy of the License at <https://www.apache.org/licenses/LICENSE-2.0>
|
| Unless required by applicable law or agreed to in writing, software
| distributed under the License is distributed on an "AS IS" BASIS,
| WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
| See the License for the specific language governing permissions and
| limitations under the License.

Open Platform for NFV Project Documentation Licence
---------------------------------------------------

| Any documentation developed by the "Open Platform for NFV Project"
| is licensed under a Creative Commons Attribution 4.0 International License.
| You should have received a copy of the license along with this. If not,
| see <https://creativecommons.org/licenses/by/4.0/>.
|
| Unless required by applicable law or agreed to in writing, documentation
| distributed under the License is distributed on an "AS IS" BASIS,
| WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
| See the License for the specific language governing permissions and
| limitations under the License.

Other Applicable Upstream Project Licenses
------------------------------------------

You may not use the content of this software bundle except in compliance with the
Licenses as listed below (non-exhaustive list, depending on end-user config):

+------------------+-------------------------------+
| **Component**    | **Licence**                   |
+------------------+-------------------------------+
| `OpenStack`_     | `Apache License 2.0`_         |
+------------------+-------------------------------+
| `OpenDaylight`_  | `Eclipse Public License 1.0`_ |
+------------------+-------------------------------+
| `PostgreSQL`_    | `PostgreSQL Licence`_         |
+------------------+-------------------------------+
| `MongoDB`_       | `GNU AGPL v3.0`_              |
+------------------+-------------------------------+
| `RabbitMQ`_      | `Mozilla Public License`_     |
+------------------+-------------------------------+
| `Linux`_         | `GPL v3`_                     |
+------------------+-------------------------------+
| `Docker`_        | `Apache License 2.0`_         |
+------------------+-------------------------------+
| `OpenJDK`_/JRE   | `GPL v2`_                     |
+------------------+-------------------------------+
| `SaltStack`_     | `Apache License 2.0`_         |
+------------------+-------------------------------+
| `salt-formulas`_ | `Apache License 2.0`_         |
+------------------+-------------------------------+
| `reclass`_       | `The Artistic Licence 2.0`_   |
+------------------+-------------------------------+
| `MaaS`_          | `GNU AGPL v3.0`_              |
+------------------+-------------------------------+

References
==========

For more information on the OPNFV Iruya release, please see:

#. `OPNFV Home Page`_
#. `OPNFV Documentation`_
#. `OPNFV Software Downloads`_
#. `Mirantis Cloud Platform Documentation`_

.. _`OpenStack`: https://www.openstack.org
.. _`OpenDaylight`: https://www.opendaylight.org
.. _`PostgreSQL`: https://www.postgresql.org
.. _`MongoDB`: https://www.mongodb.com
.. _`RabbitMQ`: https://www.rabbitmq.com
.. _`Linux`: https://www.linux.org
.. _`Docker`: https://www.docker.com
.. _`OpenJDK`: https://openjdk.java.net/
.. _`SaltStack`: https://www.saltstack.com
.. _`salt-formulas`: https://github.com/salt-formulas
.. _`reclass`: https://reclass.pantsfullofunix.net
.. _`MaaS`: https://maas.io
.. _`MCP`: https://www.mirantis.com/software/mcp/
.. _`Mirantis Cloud Platform Documentation`: https://docs.mirantis.com/mcp/latest/
.. _`OPNFV Home Page`: https://www.opnfv.org
.. _`OPNFV Hunter Wiki Page`: https://wiki.opnfv.org/display/SWREL/Hunter
.. _`OPNFV Documentation`: https://docs.opnfv.org
.. _`OPNFV Software Downloads`: https://www.opnfv.org/software/downloads
.. _`OPNFV Fuel Contributing`: CONTRIBUTING.rst
.. _`OPNFV Fuel Wiki Page`: https://wiki.opnfv.org/display/fuel/Fuel+Opnfv
.. _`OPNFV Community Support mailing list`: https://lists.opnfv.org/g/opnfv-users
.. _`OPNFV Technical Discussion mailing list`: https://lists.opnfv.org/g/opnfv-tech-discuss
.. _`OPNFV Fuel Release Notes on RTD`: https://opnfv-fuel.readthedocs.io/en/latest/release/release-notes/index.html
.. _`OPNFV Fuel Installation Instruction on RTD`: https://opnfv-fuel.readthedocs.io/en/latest/release/installation/index.html
.. _`OPNFV Fuel User Guide on RTD`: https://opnfv-fuel.readthedocs.io/en/latest/release/userguide/userguide.html
.. _`OPNFV Fuel Scenarios on RTD`: https://opnfv-fuel.readthedocs.io/en/latest/release/scenarios/index.html
.. LICENSE links
.. _`Apache License 2.0`: https://www.apache.org/licenses/LICENSE-2.0
.. _`Eclipse Public License 1.0`: https://www.eclipse.org/legal/epl-v10.html
.. _`PostgreSQL Licence`: https://opensource.org/licenses/postgresql
.. _`GNU AGPL v3.0`: https://www.gnu.org/licenses/agpl-3.0.html
.. _`Mozilla Public License`: https://www.rabbitmq.com/mpl.html
.. _`GPL v3`: https://www.gnu.org/copyleft/gpl.html
.. _`GPL v2`: https://www.gnu.org/licenses/gpl-2.0.html
.. _`The Artistic Licence 2.0`: https://www.perlfoundation.org/artistic-license-20.html
