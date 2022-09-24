load("@bazeldist//brew:rules.bzl", "deploy_brew")
load("@bazeldist//artifact:rules.bzl", "deploy_artifact")
load("@rules_pkg//:pkg.bzl", "pkg_tar")
load("//tools:hash.bzl", "hashes")

pkg_tar(
    name = "lsusb-pkg",
    deps = [
      "//package:bin-tar",
      "//package:share-tar"
    ],
    extension = "tgz",
)

hashes(
  name = "lsusb-pkg_hash",
  src = ":lsusb-pkg.tgz",
)

deploy_artifact(
  name = "deploy-pkg",
  target = ":lsusb-pkg.tgz",
  version_file = "//:VERSION",
  artifact_group = "dev.jtrim777.lsusb",
  artifact_name = "lsusb-pkg.tgz",
  release = "https://maven.jtrim777.dev/releases",
  snapshot = "https://maven.jtrim777.dev/snapshots",
  visibility = ["//visibility:private"]
)

deploy_brew(
    name = "deploy-formula",
    checksum = ":lsusb-pkg_hash.sha256",
    formula = "//:lsusb-tree.rb",
    release = "https://github.com/jtrim777-dev/homebrew-tap.git",
    snapshot = "https://github.com/jtrim777-dev/homebrew-tap.git",
    version_file = "//:VERSION",
)
