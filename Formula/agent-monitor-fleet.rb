class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.528.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a4d5cf74e452b1e1ad03c0c338527acb14221d2d6a69ba0df83307b35e99af95"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1f74b5a00f5c2296c4123ed7895907997791d74f02b38bf3f721fe781be4f5bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aec94221c6dc89b4a659a35b5fa64589ca85ce391df64d662f1e7d2d97e51a44"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be977446c4e40e47626a991548f25e1f1bf53f1270e20ba88730f2c4bd64fb34"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
