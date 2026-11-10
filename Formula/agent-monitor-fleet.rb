class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.502.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b1889c78e58d2210cd2bfad5848fdf33377a49a14ca19cc3c511a80b66876571"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f78c268cc8272f96802155cc270e659377aabf97e724084660e4028bf5ba9d6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b13dd2ba699bb64dd4355f4af751fa1f205aab3805d008358ed88db76d73aee4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ef5117154f18c99c7804d2af58b5a455152882eea10978a02cd19d0aae13c20"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
