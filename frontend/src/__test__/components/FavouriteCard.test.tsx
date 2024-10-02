import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { describe, expect, it, vi } from 'vitest';
import { MemoryRouter } from 'react-router-dom';
import FavouriteCard from '../../components/FavouriteCard';
import * as Icons from '@carbon/icons-react';

describe('FavouriteCard', () => {
  const mockIcon = () => <svg data-testid="mock-icon" />;
  const props = {
    index: 0,
    title: 'Test Title',
    link: '/test-link',
    icon: 'Search20',
    description: 'Test Description',
  };

  beforeEach(() => {
    (Icons as any)['Search20'] = mockIcon; // Mocking the Carbon icon
  });

  it('renders the card with correct content', () => {
    render(
      <MemoryRouter>
        <FavouriteCard {...props} />
      </MemoryRouter>
    );

    expect(screen.getByTestId('mock-icon')).toBeInTheDocument();
    expect(screen.getAllByText('Test Title')).toHaveLength(2); // Title appears twice (small and large)
    expect(screen.getAllByText('Test Description')).toHaveLength(2); // Description appears twice
  });
});
