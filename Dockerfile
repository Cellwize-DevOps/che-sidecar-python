# Copyright (c) 2019 Red Hat, Inc.
# This program and the accompanying materials are made
# available under the terms of the Eclipse Public License 2.0
# which is available at https://www.eclipse.org/legal/epl-2.0/
#
# SPDX-License-Identifier: EPL-2.0
#
# Contributors:
#   Red Hat, Inc. - initial API and implementation


FROM quay.io/eclipse/che-sidecar-python:3.8.6-5913fc2

RUN apt-get update && apt-get install -y --no-install-recommends -o APT::Immediate-Configure=false gcc g++

COPY chime-1.0.0-py3-none-any.whl chime-1.0.0-py3-none-any.whl
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt chime-1.0.0-py3-none-any.whl
