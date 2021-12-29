export class FluenTS<T> {
	// eslint-disable-next-line class-methods-use-this
	validate = (model: T) => {
		const message = `I validate ${typeof model}`;
		return message;
	};
}

export default FluenTS;
