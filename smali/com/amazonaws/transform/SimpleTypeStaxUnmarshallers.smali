.class public Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;
.super Ljava/lang/Object;
.source "SimpleTypeStaxUnmarshallers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DoubleStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;,
        Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;
    }
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method
