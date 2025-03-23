import { render, screen } from "@testing-library/react";
import Greet from "./Greet";

describe("Greet", () => {
  it("render Hello", () => {
    render(<Greet />);
    const textElement = screen.getByText(/hello/i);
    expect(textElement).toBeInTheDocument();
  });
});
