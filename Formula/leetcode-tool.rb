# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LeetcodeTool < Formula
  desc "一个让你更方便刷题的工具"
  homepage "https://github.com/ppsteven/leetcode-tool"
  version "1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/PPsteven/leetcode-tool/releases/download/v1.2/leetcode-tool_Darwin_x86_64.tar.gz"
      sha256 "b19ccb5174470948e658abc32975c226e0350288163e5096631302072ad0ba3d"

      def install
        bin.install "leetcode-tool"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/PPsteven/leetcode-tool/releases/download/v1.2/leetcode-tool_Darwin_arm64.tar.gz"
      sha256 "70324f58b81ba4d3c71eee7993b678acfe59a9f7685198b0dbc87f80de2a7afc"

      def install
        bin.install "leetcode-tool"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/PPsteven/leetcode-tool/releases/download/v1.2/leetcode-tool_Linux_x86_64.tar.gz"
      sha256 "704387aafa197c4dd04ef610fb3ed4f3d59027cda2a8452e38b755f1aa56d755"

      def install
        bin.install "leetcode-tool"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/PPsteven/leetcode-tool/releases/download/v1.2/leetcode-tool_Linux_arm64.tar.gz"
      sha256 "a2910cbb7cafc6dbc9e5a6def63fbb14f15e086a24b3a007ce8b4b1b574b8022"

      def install
        bin.install "leetcode-tool"
      end
    end
  end

  test do
    system "#{bin}/leetcode-tool -v"
  end
end
