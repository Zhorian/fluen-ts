import { FluenTS } from '../src/validator';

describe('FluenTS', () => {
	it('tests', () => {
		const validator = new FluenTS<string>();
		expect(validator.validate('hello world')).toBe('I validate string');
	});
});
