Name:           ros-hydro-cffi
Version:        0.1.3
Release:        0%{?dist}
Summary:        ROS cffi package

Group:          Development/Libraries
License:        cffi
URL:            http://common-lisp.net/project/cffi/
Source0:        %{name}-%{version}.tar.gz

Requires:       ros-hydro-alexandria
Requires:       ros-hydro-babel
Requires:       ros-hydro-trivial-features
Requires:       sbcl
BuildRequires:  ros-hydro-alexandria
BuildRequires:  ros-hydro-babel
BuildRequires:  ros-hydro-catkin
BuildRequires:  ros-hydro-trivial-features
BuildRequires:  sbcl

%description
3rd party library: CFFI - The Common Foreign Function Interface

%prep
%setup -q

%build
# In case we're installing to a non-standard location, look for a setup.sh
# in the install tree that was dropped by catkin, and source it.  It will
# set things like CMAKE_PREFIX_PATH, PKG_CONFIG_PATH, and PYTHONPATH.
if [ -f "/opt/ros/hydro/setup.sh" ]; then . "/opt/ros/hydro/setup.sh"; fi
mkdir -p obj-%{_target_platform} && cd obj-%{_target_platform}
%cmake .. \
        -UINCLUDE_INSTALL_DIR \
        -ULIB_INSTALL_DIR \
        -USYSCONF_INSTALL_DIR \
        -USHARE_INSTALL_PREFIX \
        -ULIB_SUFFIX \
        -DCMAKE_INSTALL_PREFIX="/opt/ros/hydro" \
        -DCMAKE_PREFIX_PATH="/opt/ros/hydro" \
        -DSETUPTOOLS_DEB_LAYOUT=OFF \
        -DCATKIN_BUILD_BINARY_PACKAGE="1" \

make %{?_smp_mflags}

%install
# In case we're installing to a non-standard location, look for a setup.sh
# in the install tree that was dropped by catkin, and source it.  It will
# set things like CMAKE_PREFIX_PATH, PKG_CONFIG_PATH, and PYTHONPATH.
if [ -f "/opt/ros/hydro/setup.sh" ]; then . "/opt/ros/hydro/setup.sh"; fi
cd obj-%{_target_platform}
make %{?_smp_mflags} install DESTDIR=%{buildroot}

%files
/opt/ros/hydro

%changelog
* Fri Apr 24 2015 Lorenz Moesenlechner <moesenle@cs.tum.edu> - 0.1.3-0
- Autogenerated by Bloom

