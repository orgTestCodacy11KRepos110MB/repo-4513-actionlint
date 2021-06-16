# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Actionlint < Formula
  desc "Static checker for GitHub Actions workflow files"
  homepage "https://github.com/rhysd/actionlint#readme"
  version "0.0.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v0.0.0/actionlint_0.0.0_darwin_amd64.tar.gz"
      sha256 "f47a5ce0577c46358f483d3e7fcf0660054f53ece4e9fb225e04a5b61a600fea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v0.0.0/actionlint_0.0.0_linux_amd64.tar.gz"
      sha256 "2ad72f498e431e7a4b79b6df199da980ed8be4fb79952e01d9e842af89ebe36f"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v0.0.0/actionlint_0.0.0_linux_armv6.tar.gz"
      sha256 "2643f39b6760c759e15e101231f75ea1483c7c35ab7d5b65fc3314f7d62e29d9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v0.0.0/actionlint_0.0.0_linux_arm64.tar.gz"
      sha256 "a7861b9c3c7678070fa0cc4232b30edd774f1945cd4cd6a04aed32c665b224b8"
    end
  end

  def install
    bin.install "actionlint"
  end

  test do
    system "#{bin}/actionlint -version"
  end
end