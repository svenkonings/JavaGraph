/* GROOVE: GRaphs for Object Oriented VErification
 * Copyright 2003--2011 University of Twente
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific
 * language governing permissions and limitations under the License.
 *
 * $Id: ImportException.java 5786 2016-08-04 09:36:22Z rensink $
 */
package groove.io.conceptual.lang;

import groove.io.conceptual.AbstractionException;

@SuppressWarnings("javadoc")
public class ImportException extends AbstractionException {
    public ImportException() {

    }

    public ImportException(String message) {
        super(message);
    }

    public ImportException(Throwable cause) {
        super(cause);
    }

    public ImportException(String message, Throwable cause) {
        super(message, cause);
    }
}
