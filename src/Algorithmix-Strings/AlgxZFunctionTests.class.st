Class {
	#name : #AlgxZFunctionTests,
	#superclass : #TestCase,
	#category : #'Algorithmix-Strings-Tests'
}

{ #category : #tests }
AlgxZFunctionTests >> testEmptyString [

	self assert: #() equals: '' zFunction
]

{ #category : #'tests - examples' }
AlgxZFunctionTests >> testExample01 [

	self assert: #(0 1 0 0 3 1 0 0 2 2 1 0) equals: 'aabcaabxaaaz' zFunction
]

{ #category : #'tests - examples' }
AlgxZFunctionTests >> testExample02 [

	self assert: #(0 1 0 2 1 0 0) equals: 'aabaacd' zFunction
]

{ #category : #'tests - examples' }
AlgxZFunctionTests >> testExample03 [

	self assert: #(0 0 6 0 4 0 2 0) equals: 'abababab' zFunction
]

{ #category : #tests }
AlgxZFunctionTests >> testHomogenousString [

	self assert: #(0 9 8 7 6 5 4 3 2 1) equals: 'aaaaaaaaaa' zFunction
]

{ #category : #tests }
AlgxZFunctionTests >> testRepeatingString [

	self assert: #(0 0 0 0 12 0 0 0 8 0 0 0 4 0 0 0) equals: 'abcdabcdabcdabcd' zFunction
]

{ #category : #tests }
AlgxZFunctionTests >> testSearchString [

	self assert: #(0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0) equals: 'ello#Hello World' zFunction
]

{ #category : #tests }
AlgxZFunctionTests >> testSingleCharacterString [

	self assert: #( 0 ) equals: '#' zFunction
]
