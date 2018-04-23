.class public final enum Lcom/amazonaws/util/CodecUtils;
.super Ljava/lang/Enum;
.source "CodecUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/CodecUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/CodecUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Lcom/amazonaws/util/CodecUtils;

    sput-object v0, Lcom/amazonaws/util/CodecUtils;->$VALUES:[Lcom/amazonaws/util/CodecUtils;

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

.method static sanitize(Ljava/lang/String;[B)I
    .locals 6

    .line 48
    array-length v0, p1

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 53
    aget-char v4, v1, v2

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x7f

    if-le v4, v5, :cond_1

    .line 58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid character found at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 60
    aput-byte v4, p1, v3

    move v3, v5

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method static sanityCheckLastPos(II)V
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    .line 113
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid last non-pad character detected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static toBytesDirect(Ljava/lang/String;)[B
    .locals 5

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 75
    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 77
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 78
    aget-char v3, v0, v2

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid character found at position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    int-to-byte v3, v3

    .line 83
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static toStringDirect([B)Ljava/lang/String;
    .locals 6

    .line 94
    array-length v0, p0

    new-array v0, v0, [C

    .line 97
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    .line 98
    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/CodecUtils;
    .locals 1

    .line 23
    const-class v0, Lcom/amazonaws/util/CodecUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/CodecUtils;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/CodecUtils;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazonaws/util/CodecUtils;->$VALUES:[Lcom/amazonaws/util/CodecUtils;

    invoke-virtual {v0}, [Lcom/amazonaws/util/CodecUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/CodecUtils;

    return-object v0
.end method
