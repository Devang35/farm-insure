module.exports = {
	compilers: {
		solc: {
			version: '0.8.17',
		},
	},

	networks: {
		development: {
			host: 'localhost',
			port: 9545,
			network_id: 5777, // Match any network id
		},
	},
};
