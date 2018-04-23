.class public final Lcom/google/android/gms/internal/zzfkq;
.super Lcom/google/android/gms/internal/zzfjm;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm<",
        "Lcom/google/android/gms/internal/zzfkq;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private tag:Ljava/lang/String;

.field private zzala:I

.field private zzmsn:Z

.field private zzofi:Lcom/google/android/gms/internal/zzfks;

.field public zzpql:J

.field public zzpqm:J

.field private zzpqn:J

.field private zzpqo:I

.field private zzpqp:[Lcom/google/android/gms/internal/zzfkr;

.field private zzpqq:[B

.field private zzpqr:Lcom/google/android/gms/internal/zzfko;

.field public zzpqs:[B

.field private zzpqt:Ljava/lang/String;

.field private zzpqu:Ljava/lang/String;

.field private zzpqv:Lcom/google/android/gms/internal/zzfkn;

.field private zzpqw:Ljava/lang/String;

.field public zzpqx:J

.field private zzpqy:Lcom/google/android/gms/internal/zzfkp;

.field public zzpqz:[B

.field private zzpra:Ljava/lang/String;

.field private zzprb:I

.field private zzprc:[I

.field private zzprd:J


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqo:I

    iput v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzala:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzmsn:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzfkr;->zzdba()[Lcom/google/android/gms/internal/zzfkr;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    sget-object v3, Lcom/google/android/gms/internal/zzfjv;->zzpnv:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqq:[B

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    sget-object v4, Lcom/google/android/gms/internal/zzfjv;->zzpnv:[B

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    const-wide/32 v4, 0x2bf20

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    iput-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    sget-object v4, Lcom/google/android/gms/internal/zzfjv;->zzpnv:[B

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprb:I

    sget-object v2, Lcom/google/android/gms/internal/zzfjv;->zzpnp:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    iput-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpfd:I

    return-void
.end method

.method private final zzar(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfkq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvt()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjj;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzfks;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfks;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    goto/16 :goto_7

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcwi()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zzks(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->getPosition()I

    move-result v2

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcwk()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvw()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzfjj;->zzmg(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    array-length v2, v2

    :goto_2
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    array-length v1, v3

    if-ge v2, v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvw()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zzkt(I)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfjv;->zzb(Lcom/google/android/gms/internal/zzfjj;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvw()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvt()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvw()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->getPosition()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvw()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_6

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprb:I

    goto/16 :goto_0

    :goto_6
    const/16 v4, 0x2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum InternalEvent"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzfjj;->zzmg(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjj;I)Z

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/zzfkp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfkp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    goto :goto_7

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcwh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzala:I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqo:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvz()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzmsn:Z

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzfko;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfko;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    goto :goto_7

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzfkn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfkn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    :goto_7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqq:[B

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfjv;->zzb(Lcom/google/android/gms/internal/zzfjj;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    array-length v2, v2

    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzfkr;

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_9
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/zzfkr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfkr;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvt()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    new-instance v1, Lcom/google/android/gms/internal/zzfkr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfkr;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    goto/16 :goto_0

    :sswitch_18
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_18
        0x8 -> :sswitch_17
        0x12 -> :sswitch_16
        0x1a -> :sswitch_15
        0x22 -> :sswitch_14
        0x32 -> :sswitch_13
        0x3a -> :sswitch_12
        0x42 -> :sswitch_11
        0x4a -> :sswitch_10
        0x50 -> :sswitch_f
        0x58 -> :sswitch_e
        0x60 -> :sswitch_d
        0x6a -> :sswitch_c
        0x72 -> :sswitch_b
        0x78 -> :sswitch_a
        0x82 -> :sswitch_9
        0x88 -> :sswitch_8
        0x92 -> :sswitch_7
        0x98 -> :sswitch_6
        0xa0 -> :sswitch_5
        0xa2 -> :sswitch_4
        0xa8 -> :sswitch_3
        0xb0 -> :sswitch_2
        0xba -> :sswitch_1
        0xc2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final zzdaz()Lcom/google/android/gms/internal/zzfkq;
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzfjm;->zzdaf()Lcom/google/android/gms/internal/zzfjm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfkq;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzfkr;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfjs;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzfkr;

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjs;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfko;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjs;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfkn;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjs;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfkp;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    array-length v1, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjs;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzfks;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfkq;->zzdaz()Lcom/google/android/gms/internal/zzfkq;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzfkq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzfkq;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqo:I

    iget v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqo:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzala:I

    iget v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzala:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzmsn:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzmsn:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzfjq;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqq:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqq:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    if-nez v1, :cond_c

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    if-eqz v1, :cond_d

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfko;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    if-eqz v1, :cond_10

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    if-eqz v1, :cond_12

    return v2

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    if-nez v1, :cond_13

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    if-eqz v1, :cond_14

    return v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfkn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    if-eqz v1, :cond_16

    return v2

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    if-eqz v1, :cond_19

    return v2

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfkp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    if-nez v1, :cond_1b

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    if-eqz v1, :cond_1c

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprb:I

    iget v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzprb:I

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzfjq;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    if-nez v1, :cond_20

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    if-eqz v1, :cond_21

    return v2

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfks;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_0

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfjo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_23
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v1, :cond_25

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_24

    return v0

    :cond_24
    return v2

    :cond_25
    return v0
.end method

.method public final hashCode()I
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqo:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzala:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzmsn:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfjq;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqq:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    mul-int/lit8 v1, v1, 0x1f

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfko;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    mul-int/lit8 v1, v1, 0x1f

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfkn;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    ushr-long/2addr v6, v0

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    mul-int/lit8 v1, v1, 0x1f

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfkp;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprb:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfjq;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    ushr-long/2addr v6, v0

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    mul-int/lit8 v1, v1, 0x1f

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfks;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfjo;->hashCode()I

    move-result v3

    :cond_b
    :goto_a
    add-int/2addr v1, v3

    return v1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfkq;->zzar(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfkq;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfjk;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzf(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqq:[B

    sget-object v4, Lcom/google/android/gms/internal/zzfjv;->zzpnv:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqq:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzc(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    sget-object v4, Lcom/google/android/gms/internal/zzfjv;->zzpnv:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzc(I[B)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzmsn:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzmsn:Z

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzl(IZ)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqo:I

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqo:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzaa(II)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzala:I

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzala:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzaa(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_d
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzfjk;->zzg(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_f
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzfjk;->zzf(IJ)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    sget-object v4, Lcom/google/android/gms/internal/zzfjv;->zzpnv:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x12

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzc(I[B)V

    :cond_11
    iget v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzprb:I

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    iget v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzprb:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzaa(II)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    array-length v0, v0

    if-lez v0, :cond_13

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    array-length v0, v0

    if-ge v1, v0, :cond_13

    const/16 v0, 0x14

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    aget v4, v4, v1

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzfjk;->zzaa(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzfjk;->zzf(IJ)V

    :cond_14
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    const/16 v0, 0x16

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzf(IJ)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    if-eqz v0, :cond_16

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    return-void
.end method

.method public final synthetic zzdaf()Lcom/google/android/gms/internal/zzfjm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfjs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfkq;

    return-object v0
.end method

.method public final synthetic zzdag()Lcom/google/android/gms/internal/zzfjs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfjs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfkq;

    return-object v0
.end method

.method protected final zzq()I
    .locals 9

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfjm;->zzq()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/zzfjk;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    const/4 v5, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->tag:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqp:[Lcom/google/android/gms/internal/zzfkr;

    aget-object v7, v7, v0

    if-eqz v7, :cond_2

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v7

    add-int/2addr v1, v7

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqq:[B

    sget-object v7, Lcom/google/android/gms/internal/zzfjv;->zzpnv:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    iget-object v7, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqq:[B

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/zzfjk;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    sget-object v7, Lcom/google/android/gms/internal/zzfjv;->zzpnv:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/zzfjk;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    iget-object v7, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqv:Lcom/google/android/gms/internal/zzfkn;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    iget-object v7, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqt:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    iget-object v7, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqr:Lcom/google/android/gms/internal/zzfko;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzmsn:Z

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfjk;->zzlg(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqo:I

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqo:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzala:I

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzala:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqu:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    const-wide/32 v7, 0x2bf20

    cmp-long v1, v1, v7

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/zzfjk;->zzh(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqy:Lcom/google/android/gms/internal/zzfkp;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/zzfjk;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    sget-object v2, Lcom/google/android/gms/internal/zzfjv;->zzpnv:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprb:I

    if-eqz v1, :cond_13

    const/16 v1, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprb:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    array-length v1, v1

    if-lez v1, :cond_15

    move v1, v6

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    array-length v2, v2

    if-ge v6, v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    aget v2, v2, v6

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfjk;->zzlh(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_14
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprc:[I

    array-length v1, v1

    mul-int/2addr v5, v1

    add-int/2addr v0, v5

    :cond_15
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    const/16 v1, 0x15

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzfkq;->zzpqn:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzfjk;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_17

    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzprd:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzfjk;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    if-eqz v1, :cond_18

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzofi:Lcom/google/android/gms/internal/zzfks;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkq;->zzpra:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    return v0
.end method
