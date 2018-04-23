.class final Lcom/tendigi/hq/hqplayer/HQNALParser$NAL;
.super Ljava/lang/Object;
.source "HQNALParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendigi/hq/hqplayer/HQNALParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NAL"
.end annotation


# static fields
.field public static final NAL_ACCESSUNITDELIMITER:I = 0x9

.field public static final NAL_AUXSLICE:I = 0x13

.field public static final NAL_DATAASLICE:I = 0x2

.field public static final NAL_DATABSLICE:I = 0x3

.field public static final NAL_DATACSLICE:I = 0x4

.field public static final NAL_DEPTHEXTENSIONSLICE:I = 0x15

.field public static final NAL_ENDOFSEQUENCE:I = 0xa

.field public static final NAL_ENDOFSTREAM:I = 0xb

.field public static final NAL_EXTENSIONSLICE:I = 0x14

.field public static final NAL_FILLER:I = 0xc

.field public static final NAL_IDRSLICE:I = 0x5

.field public static final NAL_NONIDRSLICE:I = 0x1

.field public static final NAL_PPS:I = 0x8

.field public static final NAL_PREFIX:I = 0xe

.field public static final NAL_RESERVED16:I = 0x10

.field public static final NAL_RESERVED17:I = 0x11

.field public static final NAL_RESERVED18:I = 0x12

.field public static final NAL_RESERVED22:I = 0x16

.field public static final NAL_RESERVED23:I = 0x17

.field public static final NAL_SEI:I = 0x6

.field public static final NAL_SPS:I = 0x7

.field public static final NAL_SPSEXTENSION:I = 0xd

.field public static final NAL_SUBSETSPS:I = 0xf

.field public static final NAL_UNSPECIFIED:I


# instance fields
.field final synthetic this$0:Lcom/tendigi/hq/hqplayer/HQNALParser;


# direct methods
.method constructor <init>(Lcom/tendigi/hq/hqplayer/HQNALParser;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQNALParser$NAL;->this$0:Lcom/tendigi/hq/hqplayer/HQNALParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
