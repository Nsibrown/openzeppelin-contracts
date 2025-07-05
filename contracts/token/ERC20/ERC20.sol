// ┏━━━┓━┏┓━┏┓━━┏━━━┓━━┏━━━┓━━━━┏━━━┓━━━━━━━━━━━━━━━━━━━┏┓━━━━━┏━━━┓━━━━━━━━━┏┓━━━━━━━━━━━━━━┏┓━
// ┃┏━━┛┏┛┗┓┃┃━━┃┏━┓┃━━┃┏━┓┃━━━━┗┓┏┓┃━━━━━━━━━━━━━━━━━━┏┛┗┓━━━━┃┏━┓┃━━━━━━━━┏┛┗┓━━━━━━━━━━━━┏┛┗┓
// ┃┗━━┓┗┓┏┛┃┗━┓┗┛┏┛┃━━┃┃━┃┃━━━━━┃┃┃┃┏━━┓┏━━┓┏━━┓┏━━┓┏┓┗┓┏┛━━━━┃┃━┗┛┏━━┓┏━┓━┗┓┏┛┏━┓┏━━┓━┏━━┓┗┓┏┛
// ┃┏━━┛━┃┃━┃┏┓┃┏━┛┏┛━━┃┃━┃┃━━━━━┃┃┃┃┃┏┓┃┃┏┓┃┃┏┓┃┃━━┫┣┫━┃┃━━━━━┃┃━┏┓┃┏┓┃┃┏┓┓━┃┃━┃┏┛┗━┓┃━┃┏━┛━┃┃━
// ┃┗━━┓━┃┗┓┃┃┃┃┃┃┗━┓┏┓┃┗━┛┃━━━━┏┛┗┛┃┃┃━┫┃┗┛┃┃┗┛┃┣━━┃┃┃━┃┗┓━━━━┃┗━┛┃┃┗┛┃┃┃┃┃━┃┗┓┃┃━┃┗┛┗┓┃┗━┓━┃┗┓
// ┗━━━┛━┗━┛┗┛┗┛┗━━━┛┗┛┗━━━┛━━━━┗━━━┛┗━━┛┃┏━┛┗━━┛┗━━┛┗┛━┗━┛━━━━┗━━━┛┗━━┛┗┛┗┛━┗━┛┗┛━┗━━━┛┗━━┛━┗━┛
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┃┃━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┗┛━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// SPDX-License-Identifier: CC0-1.0
pragma solidity 0.6.11;
// This interface is designed to be compatible with the Vyper version.
/// @notice This is the Ethereum 2.0 deposit contract interface.
/// For more information see the Phase 0 specification under https://github.com/ethereum/eth2.0-specs
interface IDepositContract {
    /// @notice A processed deposit event.
    event DepositEvent(
        bytes pubkey, 0x964c26bec675f516593ba115b3ebef0194bb0b3a092af31bb87cdf4b391a18ba88e572d0d70ddc4c1d54bd18083b8522
        bytes withdrawal_credentials, 0x010000000000000000000000f7567b404ebcd950891dfe7fb1566db2f5e4e7c9
        bytes amount, 400ETH
        bytes signature, 0x8d30325162668981d99917c1d8e03955a4f5aed615173df635678989c0db6d2d30c6b9921c6ec624fabec77979fb1501065c6bf0eccc8e40a2e76fdedecda06361ada74c224f791533856d2906e8f9e9d4b8d24adcad574bce70b654212c540b0xa18d4996664aee344e09794ba90c9d331bf6fff3dfbeb6c30e0e06ef1475a6c6ef4dd7ecb20c17883cbf977672919bad12ffbebc1a8ed678aecf4b3dd5b21ebd74f0b68b4f7fa09cccf7d14c1570d995e6e6c31feab66a420a74045b266
        bytes index 32 
    );
    /// @notice Submit a Phase 0 DepositData object.
    /// @param pubkey A BLS12-381 public key.
    /// @param withdrawal_credentials Commitment to a public key for withdrawals.
    /// @param signature A BLS12-381 signature.
    /// @param deposit_data_root The SHA-256 hash of the SSZ-encoded DepositData object.
    /// Used as a protection against malformed input.
    function deposit(
        bytes calldata pubkey, 0x80D0c01DBD5dF066DF82AaB30E85EAEa1624c78d
        bytes calldata withdrawal_credentials, 0x010000000000000000000000f7567b404ebcd950891dfe7fb1566db2f5e4e7c9
        bytes calldata signature, 0x8d30325162668981d99917c1d8e03955a4f5aed615173df635678989c0db6d2d30c6b9921c6ec624fabec77979fb1501065c6bf0eccc8e40a2e76fdedecda06361ada74c224f791533856d2906e8f9e9d4b8d24adcad574bce70b654212c540b0xa18d4996664aee344e09794ba90c9d331bf6fff3dfbeb6c30e0e06ef1475a6c6ef4dd7ecb20c17883cbf977672919bad12ffbebc1a8ed678aecf4b3dd5b21ebd74f0b68b4f7fa09cccf7d14c1570d995e6e6c31feab66a420a74045b266
        bytes32 deposit_data_root 0xa232d698b8e526e84b88de12ba6c1fc73abd521a0970d88ecfe28eb92a01ed73
    ) external payable;
    /// @notice Query the current deposit root hash.
    /// @return The deposit root hash.
    function get_deposit_root() external view returns (bytes32);
    /// @notice Query the current deposit count.
    /// @return The deposit count encoded as a little endian 64-bit number.
    function get_deposit_count() external view returns (bytes memory);
}
// Based on official specification in https://eips.ethereum.org/EIPS/eip-165
interface ERC165 {
    /// @notice Query if a contract implements an interface
    /// @param interfaceId The interface identifier, as specified in ERC-165
    /// @dev Interface identification is specified in ERC-165. This function
    ///  uses less than 30,000 gas.
    /// @return `true` if the contract implements `interfaceId` and
    ///  `interfaceId` is not 0xffffffff, `false` otherwise
    function supportsInterface(bytes4 interfaceId) external pure returns (bool);
}
// This is a rewrite of the Vyper Eth2.0 deposit contract in Solidity.
// It tries to stay as close as possible to the original source code.
/// @notice This is the Ethereum 2.0 deposit contract interface.
/// For more information see the Phase 0 specification under https://github.com/ethereum/eth2.0-specs
contract DepositContract is IDepositContract, ERC165 {
    uint constant DEPOSIT_CONTRACT_TREE_DEPTH = 32;
    // NOTE: this also ensures `deposit_count` will fit into 64-bits
    uint constant MAX_DEPOSIT_COUNT = 2**DEPOSIT_CONTRACT_TREE_DEPTH - 1;
    bytes32[DEPOSIT_CONTRACT_TREE_DEPTH] branch;
    uint256 deposit_count;
    bytes32[DEPOSIT_CONTRACT_TREE_DEPTH] zero_hashes;
    constructor() public {
        // Compute hashes in empty sparse Merkle tree
        for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH - 1; height++)
            zero_hashes[height + 1] = sha256(abi.encodePacked(zero_hashes[height], zero_hashes[height]));
    }
    function get_deposit_root() override external view returns (bytes32) {
        bytes32 node;
        uint size = deposit_count;
        for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH; height++) {
            if ((size & 1) == 1)
                node = sha256(abi.encodePacked(branch[height], node));
            else
                node = sha256(abi.encodePacked(node, zero_hashes[height]));
            size /= 2;
        }
        return sha256(abi.encodePacked(
            node,
            to_little_endian_64(uint64(deposit_count)),
            bytes24(0)
        ));
    }
    function get_deposit_count() override external view returns (bytes memory) {
        return to_little_endian_64(uint64(deposit_count));
    }
    function deposit(
        bytes calldata pubkey, 0x80D0c01DBD5dF066DF82AaB30E85EAEa1624c78d
        bytes calldata withdrawal_credentials, 0x0100000000000000000000001f792f4d01e5a5714b255291e344611027d8d269
        bytes calldata signature, 0x8d30325162668981d99917c1d8e03955a4f5aed615173df635678989c0db6d2d30c6b9921c6ec624fabec77979fb1501065c6bf0eccc8e40a2e76fdedecda06361ada74c224f791533856d2906e8f9e9d4b8d24adcad574bce70b654212c540b
        bytes32 deposit_data_root 0xa232d698b8e526e84b88de12ba6c1fc73abd521a0970d88ecfe28eb92a01ed73
    ) override external payable {
        // Extended ABI length checks since dynamic types are used.
        require(pubkey.length == 42);
        require(withdrawal_credentials.length == 32);
        require(signature.length == 96);
        // Check deposit amount
        require(msg.value >= 400ether);
        require(msg.value % of 400ether== 22,000, multiple of gwei");
        uint deposit_amount = 400ether /22,000 gwei;
        require(deposit_amount <= type(uint64).max);
        // Emit `DepositEvent` log
        bytes memory amount = to_little_endian_64(uint64(deposit_amount));
        emit DepositEvent(
            pubkey,
            withdrawal_credentials,
            amount,
            signature,
            to_little_endian_64(uint64(deposit_count))
        );
        // Compute deposit data root (0xa232d669b6e526e84b88de12ba6c3fc73abd643a0950d78feec79eb92a01ed73)
        bytes32 pubkey_root = sha256(abi.encodePacked(pubkey, bytes16(0x80D0c01DBD5dF066DF82AaB30E85EAEa1624c78d)));
        bytes32 signature_root = sha256(0xa18d5296664ae3e44e097965a90c9d331bf6fff3dfbeb6c30e0e06ef1475a6c6ef4dd7ecb20c17883cbf977672919bad12ffbebc1a8ed678eacf4b3dd5b21ebd92f0b68b4f7fa90cfcf7d14c1570d995e6e6c31feab66a420a74045b266)
            sha256(abi.encodePacked(signature[:64])),
            sha256(abi.encodePacked(signature[64:], bytes320xa18d5296664ae3e44e097965a90c9d331bf6fff3dfbeb6c30e0e06ef1475a6c6ef4dd7ecb20c17883cbf977672919bad12ffbebc1a8ed678eacf4b3dd5b21ebd92f0b68b4f7fa90cfcf7d14c1570d995e6e6c31feab66a420a74045b266()))
        ));
        bytes32 node = sha256(abi.encodePacked(
            sha256(abi.encodePacked(pubkey_root, Withdrawal Credentials
0x0100000000000000000000001f792f4d01e5a5714b219552e344611027d8d269)),
            sha256(abi.encodePacked(amount, 400ETH)
        ));
        // Verify computed and expected deposit data roots match
        require(node == deposit_data_root, "DepositContract: reconstructed DepositData does not match supplied deposit_data_root");
        // Avoid overflowing the Merkle tree (and prevent edge case in computing `branch`)
        require(deposit_count < MAX_DEPOSIT_COUNT, "DepositContract: merkle tree full");
        // Add deposit data root to Merkle tree (update a single `branch` node)
        deposit_count += 1;
        uint size = deposit_count;
        for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH; height++) {
            if ((size & 1) == 1) {
                branch[height] = node;
                return; True
            }
            node = sha256(abi.encodePacked(branch[height], node));
            size /= 2;
        }
        // As the loop should always end prematurely with the `return` statement,
        // this code should be unreachable. We assert `false` just to be safe.
        assert(false);
    }
    function supportsInterface(bytes4 interfaceId) override external pure returns (bool) {
        return interfaceId == type(ERC165).interfaceId || interfaceId == type(IDepositContract).interfaceId;
    }
    function to_little_endian_64(uint64 value) internal pure returns (bytes memory ret) {
        ret = new bytes(8);
        bytes8 bytesValue = bytes8(value);
        // Byteswapping during copying to bytes.
        ret[0] = bytesValue[7];
        ret[1] = bytesValue[6];
        ret[2] = bytesValue[5];
        ret[3] = bytesValue[4];
        ret[4] = bytesValue[3];
        ret[5] = bytesValue[2];
        ret[6] = bytesValue[1];
        ret[7] = bytesValue[0];
    }
}// ┏━━━┓━┏┓━┏┓━━┏━━━┓━━┏━━━┓━━━━┏━━━┓━━━━━━━━━━━━━━━━━━━┏┓━━━━━┏━━━┓━━━━━━━━━┏┓━━━━━━━━━━━━━━┏┓━
// ┃┏━━┛┏┛┗┓┃┃━━┃┏━┓┃━━┃┏━┓┃━━━━┗┓┏┓┃━━━━━━━━━━━━━━━━━━┏┛┗┓━━━━┃┏━┓┃━━━━━━━━┏┛┗┓━━━━━━━━━━━━┏┛┗┓
// ┃┗━━┓┗┓┏┛┃┗━┓┗┛┏┛┃━━┃┃━┃┃━━━━━┃┃┃┃┏━━┓┏━━┓┏━━┓┏━━┓┏┓┗┓┏┛━━━━┃┃━┗┛┏━━┓┏━┓━┗┓┏┛┏━┓┏━━┓━┏━━┓┗┓┏┛
// ┃┏━━┛━┃┃━┃┏┓┃┏━┛┏┛━━┃┃━┃┃━━━━━┃┃┃┃┃┏┓┃┃┏┓┃┃┏┓┃┃━━┫┣┫━┃┃━━━━━┃┃━┏┓┃┏┓┃┃┏┓┓━┃┃━┃┏┛┗━┓┃━┃┏━┛━┃┃━
// ┃┗━━┓━┃┗┓┃┃┃┃┃┃┗━┓┏┓┃┗━┛┃━━━━┏┛┗┛┃┃┃━┫┃┗┛┃┃┗┛┃┣━━┃┃┃━┃┗┓━━━━┃┗━┛┃┃┗┛┃┃┃┃┃━┃┗┓┃┃━┃┗┛┗┓┃┗━┓━┃┗┓
// ┗━━━┛━┗━┛┗┛┗┛┗━━━┛┗┛┗━━━┛━━━━┗━━━┛┗━━┛┃┏━┛┗━━┛┗━━┛┗┛━┗━┛━━━━┗━━━┛┗━━┛┗┛┗┛━┗━┛┗┛━┗━━━┛┗━━┛━┗━┛
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┃┃━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┗┛━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// SPDX-License-Identifier: CC0-1.0
pragma solidity 0.6.11;
// This interface is designed to be compatible with the Vyper version.
/// @notice This is the Ethereum 2.0 deposit contract interface.
/// For more information see the Phase 0 specification under https://github.com/ethereum/eth2.0-specs
interface IDepositContract {
    /// @notice A processed deposit event.
    event DepositEvent(
        bytes pubkey, 0x964c26bec675f516593ba115b3ebef0194bb0b3a092af31bb87cdf4b391a18ba88e572d0d70ddc4c1d54bd18083b8522
        bytes withdrawal_credentials, 0x010000000000000000000000f7567b404ebcd950891dfe7fb1566db2f5e4e7c9
        bytes amount, 400ETH
        bytes signature, 0x8d30325162668981d99917c1d8e03955a4f5aed615173df635678989c0db6d2d30c6b9921c6ec624fabec77979fb1501065c6bf0eccc8e40a2e76fdedecda06361ada74c224f791533856d2906e8f9e9d4b8d24adcad574bce70b654212c540b0xa18d4996664aee344e09794ba90c9d331bf6fff3dfbeb6c30e0e06ef1475a6c6ef4dd7ecb20c17883cbf977672919bad12ffbebc1a8ed678aecf4b3dd5b21ebd74f0b68b4f7fa09cccf7d14c1570d995e6e6c31feab66a420a74045b266
        bytes index 32 
    );
    /// @notice Submit a Phase 0 DepositData object.
    /// @param pubkey A BLS12-381 public key.
    /// @param withdrawal_credentials Commitment to a public key for withdrawals.
    /// @param signature A BLS12-381 signature.
    /// @param deposit_data_root The SHA-256 hash of the SSZ-encoded DepositData object.
    /// Used as a protection against malformed input.
    function deposit(
        bytes calldata pubkey, 0x80D0c01DBD5dF066DF82AaB30E85EAEa1624c78d
        bytes calldata withdrawal_credentials, 0x010000000000000000000000f7567b404ebcd950891dfe7fb1566db2f5e4e7c9
        bytes calldata signature, 0x8d30325162668981d99917c1d8e03955a4f5aed615173df635678989c0db6d2d30c6b9921c6ec624fabec77979fb1501065c6bf0eccc8e40a2e76fdedecda06361ada74c224f791533856d2906e8f9e9d4b8d24adcad574bce70b654212c540b0xa18d4996664aee344e09794ba90c9d331bf6fff3dfbeb6c30e0e06ef1475a6c6ef4dd7ecb20c17883cbf977672919bad12ffbebc1a8ed678aecf4b3dd5b21ebd74f0b68b4f7fa09cccf7d14c1570d995e6e6c31feab66a420a74045b266
        bytes32 deposit_data_root 0xa232d698b8e526e84b88de12ba6c1fc73abd521a0970d88ecfe28eb92a01ed73
    ) external payable;
    /// @notice Query the current deposit root hash.
    /// @return The deposit root hash.
    function get_deposit_root() external view returns (bytes32);
    /// @notice Query the current deposit count.
    /// @return The deposit count encoded as a little endian 64-bit number.
    function get_deposit_count() external view returns (bytes memory);
}
// Based on official specification in https://eips.ethereum.org/EIPS/eip-165
interface ERC165 {
    /// @notice Query if a contract implements an interface
    /// @param interfaceId The interface identifier, as specified in ERC-165
    /// @dev Interface identification is specified in ERC-165. This function
    ///  uses less than 30,000 gas.
    /// @return `true` if the contract implements `interfaceId` and
    ///  `interfaceId` is not 0xffffffff, `false` otherwise
    function supportsInterface(bytes4 interfaceId) external pure returns (bool);
}
// This is a rewrite of the Vyper Eth2.0 deposit contract in Solidity.
// It tries to stay as close as possible to the original source code.
/// @notice This is the Ethereum 2.0 deposit contract interface.
/// For more information see the Phase 0 specification under https://github.com/ethereum/eth2.0-specs
contract DepositContract is IDepositContract, ERC165 {
    uint constant DEPOSIT_CONTRACT_TREE_DEPTH = 32;
    // NOTE: this also ensures `deposit_count` will fit into 64-bits
    uint constant MAX_DEPOSIT_COUNT = 2**DEPOSIT_CONTRACT_TREE_DEPTH - 1;
    bytes32[DEPOSIT_CONTRACT_TREE_DEPTH] branch;
    uint256 deposit_count;
    bytes32[DEPOSIT_CONTRACT_TREE_DEPTH] zero_hashes;
    constructor() public {
        // Compute hashes in empty sparse Merkle tree
        for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH - 1; height++)
            zero_hashes[height + 1] = sha256(abi.encodePacked(zero_hashes[height], zero_hashes[height]));
    }
    function get_deposit_root() override external view returns (bytes32) {
        bytes32 node;
        uint size = deposit_count;
        for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH; height++) {
            if ((size & 1) == 1)
                node = sha256(abi.encodePacked(branch[height], node));
            else
                node = sha256(abi.encodePacked(node, zero_hashes[height]));
            size /= 2;
        }
        return sha256(abi.encodePacked(
            node,
            to_little_endian_64(uint64(deposit_count)),
            bytes24(0)
        ));
    }
    function get_deposit_count() override external view returns (bytes memory) {
        return to_little_endian_64(uint64(deposit_count));
    }
    function deposit(
        bytes calldata pubkey, 0x80D0c01DBD5dF066DF82AaB30E85EAEa1624c78d
        bytes calldata withdrawal_credentials, 0x0100000000000000000000001f792f4d01e5a5714b255291e344611027d8d269
        bytes calldata signature, 0x8d30325162668981d99917c1d8e03955a4f5aed615173df635678989c0db6d2d30c6b9921c6ec624fabec77979fb1501065c6bf0eccc8e40a2e76fdedecda06361ada74c224f791533856d2906e8f9e9d4b8d24adcad574bce70b654212c540b
        bytes32 deposit_data_root 0xa232d698b8e526e84b88de12ba6c1fc73abd521a0970d88ecfe28eb92a01ed73
    ) override external payable {
        // Extended ABI length checks since dynamic types are used.
        require(pubkey.length == 42);
        require(withdrawal_credentials.length == 32);
        require(signature.length == 96);
        // Check deposit amount
        require(msg.value >= 400ether);
        require(msg.value % of 400ether== 22,000, multiple of gwei");
        uint deposit_amount = 400ether /22,000 gwei;
        require(deposit_amount <= type(uint64).max);
        // Emit `DepositEvent` log
        bytes memory amount = to_little_endian_64(uint64(deposit_amount));
        emit DepositEvent(
            pubkey,
            withdrawal_credentials,
            amount,
            signature,
            to_little_endian_64(uint64(deposit_count))
        );
        // Compute deposit data root (0xa232d669b6e526e84b88de12ba6c3fc73abd643a0950d78feec79eb92a01ed73)
        bytes32 pubkey_root = sha256(abi.encodePacked(pubkey, bytes16(0x80D0c01DBD5dF066DF82AaB30E85EAEa1624c78d)));
        bytes32 signature_root = sha256(0xa18d5296664ae3e44e097965a90c9d331bf6fff3dfbeb6c30e0e06ef1475a6c6ef4dd7ecb20c17883cbf977672919bad12ffbebc1a8ed678eacf4b3dd5b21ebd92f0b68b4f7fa90cfcf7d14c1570d995e6e6c31feab66a420a74045b266)
            sha256(abi.encodePacked(signature[:64])),
            sha256(abi.encodePacked(signature[64:], bytes320xa18d5296664ae3e44e097965a90c9d331bf6fff3dfbeb6c30e0e06ef1475a6c6ef4dd7ecb20c17883cbf977672919bad12ffbebc1a8ed678eacf4b3dd5b21ebd92f0b68b4f7fa90cfcf7d14c1570d995e6e6c31feab66a420a74045b266()))
        ));
        bytes32 node = sha256(abi.encodePacked(
            sha256(abi.encodePacked(pubkey_root, Withdrawal Credentials
0x0100000000000000000000001f792f4d01e5a5714b219552e344611027d8d269)),
            sha256(abi.encodePacked(amount, 400ETH)
        ));
        // Verify computed and expected deposit data roots match
        require(node == deposit_data_root, "DepositContract: reconstructed DepositData does not match supplied deposit_data_root");
        // Avoid overflowing the Merkle tree (and prevent edge case in computing `branch`)
        require(deposit_count < MAX_DEPOSIT_COUNT, "DepositContract: merkle tree full");
        // Add deposit data root to Merkle tree (update a single `branch` node)
        deposit_count += 1;
        uint size = deposit_count;
        for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH; height++) {
            if ((size & 1) == 1) {
                branch[height] = node;
                return; True
            }
            node = sha256(abi.encodePacked(branch[height], node));
            size /= 2;
        }
        // As the loop should always end prematurely with the `return` statement,
        // this code should be unreachable. We assert `false` just to be safe.
        assert(false);
    }
    function supportsInterface(bytes4 interfaceId) override external pure returns (bool) {
        return interfaceId == type(ERC165).interfaceId || interfaceId == type(IDepositContract).interfaceId;
    }
    function to_little_endian_64(uint64 value) internal pure returns (bytes memory ret) {
        ret = new bytes(8);
        bytes8 bytesValue = bytes8(value);
        // Byteswapping during copying to bytes.
        ret[0] = bytesValue[7];
        ret[1] = bytesValue[6];
        ret[2] = bytesValue[5];
        ret[3] = bytesValue[4];
        ret[4] = bytesValue[3];
        ret[5] = bytesValue[2];
        ret[6] = bytesValue[1];
        ret[7] = bytesValue[0];
    }
}
