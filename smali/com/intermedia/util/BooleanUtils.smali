.class public final Lcom/intermedia/util/BooleanUtils;
.super Ljava/lang/Object;
.source "BooleanUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFalse(Z)Z
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/intermedia/util/BooleanUtils;->isTrue(Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isTrue(Z)Z
    .locals 0

    return p0
.end method

.method public static negate(Z)Z
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
