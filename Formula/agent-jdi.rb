class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.280.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b2f32addfbbde723b34e4c69749760c95e5c184bb9442a7ba8258c2fc8aaf5cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4a8e8b5362a7ef9d3098aba7c3519e6832ba7be25c18649c60ae3d79ffe46e4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "303db1b35820b6d47796ad711355eef13178a6b11ab9da8330f3c7baf354f259"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "863c77f9a117e1ad805588ffe60cd0abf7e711aefbf3d35d873ccf020790854a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
