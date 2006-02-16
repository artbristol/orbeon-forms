<!--
    Copyright 2004 Orbeon, Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
-->
<p:config xmlns:p="http://www.orbeon.com/oxf/pipeline"
          xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
          xmlns:sql="http://orbeon.org/oxf/xml/sql"
          xmlns:oxf="http://www.orbeon.com/oxf/processors">

    <p:processor name="oxf:sql">
        <p:input name="datasource" href="../../datasource-sql.xml"/>
        <p:input name="config">
            <sql:config>
                <sql:connection>
                    <sql:execute>
                        <sql:update>
                            update oxf_employee set manager_id = 430
                             where employee_id in (58, 51, 308)
                        </sql:update>
                    </sql:execute>
                    <sql:execute>
                        <sql:update>
                            update oxf_employee set manager_id = 58
                             where employee_id in (40, 393)
                        </sql:update>
                    </sql:execute>
                    <sql:execute>
                        <sql:update>
                            update oxf_employee set manager_id = 51
                             where employee_id in (214, 346)
                        </sql:update>
                    </sql:execute>
                    <sql:execute>
                        <sql:update>
                            update oxf_employee set manager_id = 40
                             where employee_id in (460, 515)
                        </sql:update>
                    </sql:execute>
                    <dummy/>
                </sql:connection>
            </sql:config>
        </p:input>
    </p:processor>

</p:config>