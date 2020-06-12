Extension { #name : #ByteString }

{ #category : #'*Algorithmix-Strings' }
ByteString >> prefixFunction [

	| len pi |
	len := self size.
	pi := Array new: len.
	pi atAllPut: 0.
	2 to: len do: [:i |
		| j |
		j := pi at: i - 1.
		[j > 0 and: [(self byteAt: i) ~= (self byteAt: j + 1)]]
			whileTrue: [j := pi at: j].
		(self byteAt: i) = (self byteAt: j + 1)
			ifTrue: [j := j + 1].
		pi at: i put: j].
	^ pi
]

{ #category : #'*Algorithmix-Strings' }
ByteString >> sortedCyclicShifts [

	| len perm eqClass cnt classes |
	len := self size.
	perm := Array new: len.
	eqClass := Array new: len.
	cnt := Array
				new: (len max: 256).
	cnt atAllPut: 0.
	1 to: len do: [:i | cnt at: (self byteAt: i) + 1 put: ((cnt at: (self byteAt: i) + 1) + 1)].
	2 to: 256 do: [:i | cnt at: i put: (cnt at: i) + (cnt at: i - 1)].
	1 to: len do: [:i | perm at: (cnt at: (self byteAt: i) + 1 put: (cnt at: (self byteAt: i) + 1) - 1) + 1 put: i].
	eqClass at: (perm at: 1) put: 0.
	classes := 1.
	2 to: len do: [:i |
		(self byteAt: (perm at: i)) ~= (self byteAt: (perm at: i - 1)) ifTrue: [
			classes := classes + 1].
		eqClass at: (perm at: i) put: classes - 1].
	
	self flag: #todo
]

{ #category : #'*Algorithmix-Strings' }
ByteString >> zFunction [

	| len z l r |
	len := self size.
	z := Array new: len.
	z atAllPut: 0.
	l := r := 1.
	2 to: len do: [:i |
		i <= r ifTrue: [
			z at: i put: (r - i + 1 min: (z at: i - l + 1))].
		[(i + (z at: i)) <= len and: [(self byteAt: (z at: i) + 1) = (self byteAt: i + (z at: i))]]
			whileTrue: [z at: i put: (z at: i) + 1].
		((i + (z at: i) - 1) > r) ifTrue: [
			l := i.
			r := i + (z at: i) - 1]].
	^ z
]
