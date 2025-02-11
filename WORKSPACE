# WORKSPACE
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

http_archive(
    name = "io_bazel_rules_kotlin",
    sha256 = "1455f2ec4bf7ea12d2c90b0dfd6402553c3bb6cbc0271023e2e01ccdefb4a49a",
    strip_prefix = "rules_kotlin-c2519b00299cff9df22267e8359784e9948dba67",
    type = "zip",
    urls = ["https://github.com/vaticle/rules_kotlin/archive/c2519b00299cff9df22267e8359784e9948dba67.zip"],
)

load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kotlin_repositories", "kt_register_toolchains")

kotlin_repositories()

kt_register_toolchains()

http_archive(
    name = "rules_jvm_external",
    sha256 = "82262ff4223c5fda6fb7ff8bd63db8131b51b413d26eb49e3131037e79e324af",
    strip_prefix = "rules_jvm_external-3.2",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/3.2.zip",
)

http_archive(
    name = "bazeldist",
    sha256 = "721a473c4ae027bcf08ffc2f5b9c19fe08f25eaf8c28a13804cb904f93161092",
    url = "https://github.com/jtrim777-dev/bazeldist/releases/download/v0.1.7/bazeldist-all.tar.gz",
)

load("@bazeldist//maven:deps.bzl", "maven_artifacts_with_versions")
load("@rules_jvm_external//:defs.bzl", "maven_install")

maven_install(
    artifacts = maven_artifacts_with_versions,
    fetch_sources = True,
    repositories = [
        "https://repo1.maven.org/maven2",
    ],
    strict_visibility = True,
    version_conflict_policy = "pinned",
)

git_repository(
    name = "rules_python",
    patch_args = ["-p1"],
    remote = "https://github.com/bazelbuild/rules_python.git",
    tag = "0.1.0",
)

http_archive(
    name = "rules_pkg",
    patch_args = ["-p1"],
    patches = [
        "@bazeldist//:bazelbuild_rules_pkg-allow-long-filenames.patch",
    ],
    sha256 = "038f1caa773a7e35b3663865ffb003169c6a71dc995e39bf4815792f385d837d",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/0.4.0/rules_pkg-0.4.0.tar.gz",
        "https://github.com/bazelbuild/rules_pkg/releases/download/0.4.0/rules_pkg-0.4.0.tar.gz",
    ],
)

load("@bazeldist//common:rules.bzl", "workspace_refs")

workspace_refs(
    name = "repo_workspace_refs",
)
