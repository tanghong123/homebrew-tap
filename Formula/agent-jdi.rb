class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.462.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "df3917b684780dfab4c60db37086ab3ae65706572d84f7ba04b95125d7587cf8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "99d15281dc8f96ff0dc5980eab061f8018ea8df77a3d7075fe537ac63c705c8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e77d68099a4c17589e0d8bdfa2eecd231ac8b7d0e138c559d971126006f5cf61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b39d9f2168ae4439ea5abbb5c73d9bec15acfc5e23ae4b3088f2405764487415"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
