.class public final enum Lcom/neovisionaries/ws/client/WebSocketError;
.super Ljava/lang/Enum;
.source "WebSocketError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neovisionaries/ws/client/WebSocketError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum COMPRESSION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum CONTINUATION_NOT_CLOSED:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum DECOMPRESSION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum EXTENSIONS_CONFLICT:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum EXTENSION_PARSE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum FLUSH_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum FRAGMENTED_CONTROL_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum FRAME_MASKED:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum HOSTNAME_UNVERIFIED:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum HTTP_HEADER_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum INSUFFICENT_DATA:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum INSUFFICIENT_MEMORY_FOR_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum INTERRUPTED_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum INVALID_PAYLOAD_LENGTH:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum IO_ERROR_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum IO_ERROR_IN_WRITING:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum NON_ZERO_RESERVED_BITS:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum NOT_IN_CREATED_STATE:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum NOT_SWITCHING_PROTOCOLS:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum NO_CONNECTION_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum NO_MORE_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum NO_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum NO_UPGRADE_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum NO_UPGRADE_IN_CONNECTION_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum NO_WEBSOCKET_IN_UPGRADE_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum OPENING_HAHDSHAKE_REQUEST_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum OPENING_HANDSHAKE_RESPONSE_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum PROXY_HANDSHAKE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum SOCKET_CONNECT_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum SOCKET_INPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum SOCKET_OUTPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum SOCKET_OVERLAY_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum SSL_HANDSHAKE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum STATUS_LINE_BAD_FORMAT:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum STATUS_LINE_EMPTY:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum TEXT_MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum TOO_LONG_CONTROL_FRAME_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum TOO_LONG_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum UNEXPECTED_CONTINUATION_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum UNEXPECTED_ERROR_IN_READING_THREAD:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum UNEXPECTED_ERROR_IN_WRITING_THREAD:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum UNEXPECTED_RESERVED_BIT:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum UNKNOWN_OPCODE:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum UNSUPPORTED_EXTENSION:Lcom/neovisionaries/ws/client/WebSocketError;

.field public static final enum UNSUPPORTED_PROTOCOL:Lcom/neovisionaries/ws/client/WebSocketError;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 35
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "NOT_IN_CREATED_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NOT_IN_CREATED_STATE:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 41
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "SOCKET_INPUT_STREAM_FAILURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_INPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 47
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "SOCKET_OUTPUT_STREAM_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_OUTPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 53
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "OPENING_HAHDSHAKE_REQUEST_FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->OPENING_HAHDSHAKE_REQUEST_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 59
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "OPENING_HANDSHAKE_RESPONSE_FAILURE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->OPENING_HANDSHAKE_RESPONSE_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 65
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "STATUS_LINE_EMPTY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->STATUS_LINE_EMPTY:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 71
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "STATUS_LINE_BAD_FORMAT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->STATUS_LINE_BAD_FORMAT:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 77
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "NOT_SWITCHING_PROTOCOLS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NOT_SWITCHING_PROTOCOLS:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 83
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "HTTP_HEADER_FAILURE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->HTTP_HEADER_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 89
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "NO_UPGRADE_HEADER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NO_UPGRADE_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 95
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "NO_WEBSOCKET_IN_UPGRADE_HEADER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NO_WEBSOCKET_IN_UPGRADE_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 101
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "NO_CONNECTION_HEADER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NO_CONNECTION_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 107
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "NO_UPGRADE_IN_CONNECTION_HEADER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NO_UPGRADE_IN_CONNECTION_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 113
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "NO_SEC_WEBSOCKET_ACCEPT_HEADER"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NO_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 119
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 125
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "EXTENSION_PARSE_ERROR"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->EXTENSION_PARSE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 131
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "UNSUPPORTED_EXTENSION"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNSUPPORTED_EXTENSION:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 140
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "EXTENSIONS_CONFLICT"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->EXTENSIONS_CONFLICT:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 146
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "UNSUPPORTED_PROTOCOL"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNSUPPORTED_PROTOCOL:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 152
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "INSUFFICENT_DATA"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->INSUFFICENT_DATA:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 158
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "INVALID_PAYLOAD_LENGTH"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->INVALID_PAYLOAD_LENGTH:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 164
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "TOO_LONG_PAYLOAD"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->TOO_LONG_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 170
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "INSUFFICIENT_MEMORY_FOR_PAYLOAD"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->INSUFFICIENT_MEMORY_FOR_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 176
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "INTERRUPTED_IN_READING"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->INTERRUPTED_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 182
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "IO_ERROR_IN_READING"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->IO_ERROR_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 188
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "IO_ERROR_IN_WRITING"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->IO_ERROR_IN_WRITING:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 194
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "FLUSH_ERROR"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->FLUSH_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 220
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "NON_ZERO_RESERVED_BITS"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NON_ZERO_RESERVED_BITS:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 244
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "UNEXPECTED_RESERVED_BIT"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 259
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "FRAME_MASKED"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->FRAME_MASKED:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 270
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "UNKNOWN_OPCODE"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNKNOWN_OPCODE:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 285
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "FRAGMENTED_CONTROL_FRAME"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->FRAGMENTED_CONTROL_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 291
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "UNEXPECTED_CONTINUATION_FRAME"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_CONTINUATION_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 297
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "CONTINUATION_NOT_CLOSED"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->CONTINUATION_NOT_CLOSED:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 312
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "TOO_LONG_CONTROL_FRAME_PAYLOAD"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->TOO_LONG_CONTROL_FRAME_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 318
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "MESSAGE_CONSTRUCTION_ERROR"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 324
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "TEXT_MESSAGE_CONSTRUCTION_ERROR"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->TEXT_MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 331
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "UNEXPECTED_ERROR_IN_READING_THREAD"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_ERROR_IN_READING_THREAD:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 338
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "UNEXPECTED_ERROR_IN_WRITING_THREAD"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_ERROR_IN_WRITING_THREAD:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 352
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 368
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 376
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "COMPRESSION_ERROR"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->COMPRESSION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 384
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "DECOMPRESSION_ERROR"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->DECOMPRESSION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 393
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "SOCKET_CONNECT_ERROR"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_CONNECT_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 401
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "PROXY_HANDSHAKE_ERROR"

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->PROXY_HANDSHAKE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 409
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "SOCKET_OVERLAY_ERROR"

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_OVERLAY_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 417
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "SSL_HANDSHAKE_ERROR"

    const/16 v15, 0x2e

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->SSL_HANDSHAKE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 434
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "NO_MORE_FRAME"

    const/16 v15, 0x2f

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NO_MORE_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 453
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "HOSTNAME_UNVERIFIED"

    const/16 v15, 0x30

    invoke-direct {v0, v1, v15}, Lcom/neovisionaries/ws/client/WebSocketError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->HOSTNAME_UNVERIFIED:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v0, 0x31

    .line 24
    new-array v0, v0, [Lcom/neovisionaries/ws/client/WebSocketError;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->NOT_IN_CREATED_STATE:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_INPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_OUTPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->OPENING_HAHDSHAKE_REQUEST_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->OPENING_HANDSHAKE_RESPONSE_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->STATUS_LINE_EMPTY:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->STATUS_LINE_BAD_FORMAT:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->NOT_SWITCHING_PROTOCOLS:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->HTTP_HEADER_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->NO_UPGRADE_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->NO_WEBSOCKET_IN_UPGRADE_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->NO_CONNECTION_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v13

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->NO_UPGRADE_IN_CONNECTION_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    aput-object v1, v0, v14

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->NO_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->EXTENSION_PARSE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNSUPPORTED_EXTENSION:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->EXTENSIONS_CONFLICT:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNSUPPORTED_PROTOCOL:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->INSUFFICENT_DATA:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->INVALID_PAYLOAD_LENGTH:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->TOO_LONG_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->INSUFFICIENT_MEMORY_FOR_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->INTERRUPTED_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->IO_ERROR_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->IO_ERROR_IN_WRITING:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->FLUSH_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->NON_ZERO_RESERVED_BITS:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->FRAME_MASKED:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNKNOWN_OPCODE:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->FRAGMENTED_CONTROL_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_CONTINUATION_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->CONTINUATION_NOT_CLOSED:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->TOO_LONG_CONTROL_FRAME_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->TEXT_MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_ERROR_IN_READING_THREAD:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_ERROR_IN_WRITING_THREAD:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->COMPRESSION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->DECOMPRESSION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_CONNECT_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->PROXY_HANDSHAKE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_OVERLAY_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->SSL_HANDSHAKE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->NO_MORE_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->HOSTNAME_UNVERIFIED:Lcom/neovisionaries/ws/client/WebSocketError;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->$VALUES:[Lcom/neovisionaries/ws/client/WebSocketError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketError;
    .locals 1

    .line 24
    const-class v0, Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neovisionaries/ws/client/WebSocketError;

    return-object p0
.end method

.method public static values()[Lcom/neovisionaries/ws/client/WebSocketError;
    .locals 1

    .line 24
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->$VALUES:[Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-virtual {v0}, [Lcom/neovisionaries/ws/client/WebSocketError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/ws/client/WebSocketError;

    return-object v0
.end method
