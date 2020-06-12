Class {
	#name : #AlgxPrefixFunctionTests,
	#superclass : #TestCase,
	#category : #'Algorithmix-Strings-Tests'
}

{ #category : #tests }
AlgxPrefixFunctionTests >> testEmptyString [

	self assert: #() equals: '' prefixFunction
]

{ #category : #'tests - examples' }
AlgxPrefixFunctionTests >> testExample01 [

	self assert: #(0 0 0 1 2 3 0) equals: 'abcabcd' prefixFunction
]

{ #category : #'tests - examples' }
AlgxPrefixFunctionTests >> testExample02 [

	self assert: #(0 1 0 1 2 2 3) equals: 'aabaaab' prefixFunction
]

{ #category : #tests }
AlgxPrefixFunctionTests >> testHomogenousString [

	self assert: #(0 1 2 3 4 5 6 7 8 9) equals: 'aaaaaaaaaa' prefixFunction
]

{ #category : #tests }
AlgxPrefixFunctionTests >> testRepeatingString [

	self assert: #(0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12) equals: 'abcdabcdabcdabcd' prefixFunction
]

{ #category : #tests }
AlgxPrefixFunctionTests >> testSearchString [

	self assert:  #(0 0 0 0 0 0 1 2 3 4 0 0 0 0 0 0) equals: 'ello#Hello World' prefixFunction
]

{ #category : #tests }
AlgxPrefixFunctionTests >> testSingleCharacterString [

	self assert: #( 0 ) equals: '#' prefixFunction
]
