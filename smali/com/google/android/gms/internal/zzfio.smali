.class public final Lcom/google/android/gms/internal/zzfio;
.super Ljava/lang/Object;


# static fields
.field private static final zzpkp:Lcom/google/android/gms/internal/zzfio;


# instance fields
.field private count:I

.field private zzpfc:Z

.field private zzpgs:I

.field private zzpkq:[I

.field private zzpkr:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzfio;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/zzfio;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzfio;->zzpkp:Lcom/google/android/gms/internal/zzfio;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/zzfio;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpgs:I

    iput p1, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzfio;->zzpfc:Z

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/zzfio;Lcom/google/android/gms/internal/zzfio;)Lcom/google/android/gms/internal/zzfio;
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    iget v1, p1, Lcom/google/android/gms/internal/zzfio;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    iget v4, p1, Lcom/google/android/gms/internal/zzfio;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    iget p1, p1, Lcom/google/android/gms/internal/zzfio;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/zzfio;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzfio;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private zzc(ILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfio;->zzczl()V

    iget v0, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    shr-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    aput-object p2, p1, v0

    iget p1, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    return-void
.end method

.method private final zzczl()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpfc:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static zzczu()Lcom/google/android/gms/internal/zzfio;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfio;->zzpkp:Lcom/google/android/gms/internal/zzfio;

    return-object v0
.end method

.method static zzczv()Lcom/google/android/gms/internal/zzfio;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfio;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzfio;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzfio;

    iget v2, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    iget v3, p1, Lcom/google/android/gms/internal/zzfio;->count:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget v6, v2, v5

    aget v7, v3, v5

    if-eq v6, v7, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_1
    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move p1, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_3
    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzffg;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    aget v1, v1, v0

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/zzfge;->zzcyf()Lcom/google/android/gms/internal/zzfgf;

    move-result-object p1

    throw p1

    :pswitch_0
    const/4 v1, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzffg;->zzz(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzfio;->zza(Lcom/google/android/gms/internal/zzffg;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzffg;->zzz(II)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzfes;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzffg;->zza(ILcom/google/android/gms/internal/zzfes;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzffg;->zzb(IJ)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzffg;->zza(IJ)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzffg;->zzac(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zza(Lcom/google/android/gms/internal/zzfji;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfji;->zzcwv()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzpho:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/zzfji;->zzb(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/zzfji;->zzb(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final zzb(ILcom/google/android/gms/internal/zzffb;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfio;->zzczl()V

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/zzfge;->zzcyf()Lcom/google/android/gms/internal/zzfgf;

    move-result-object p1

    throw p1

    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvy()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfio;->zzc(ILjava/lang/Object;)V

    return v2

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_2
    new-instance v1, Lcom/google/android/gms/internal/zzfio;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfio;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvt()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3, p2}, Lcom/google/android/gms/internal/zzfio;->zzb(ILcom/google/android/gms/internal/zzffb;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    shl-int/lit8 v0, v0, 0x3

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzffb;->zzkp(I)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzfio;->zzc(ILjava/lang/Object;)V

    return v2

    :pswitch_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcwb()Lcom/google/android/gms/internal/zzfes;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfio;->zzc(ILjava/lang/Object;)V

    return v2

    :pswitch_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvx()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfio;->zzc(ILjava/lang/Object;)V

    return v2

    :pswitch_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvv()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfio;->zzc(ILjava/lang/Object;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzbiy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpfc:Z

    return-void
.end method

.method public final zzczw()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpgs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/zzfes;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzffg;->zzd(ILcom/google/android/gms/internal/zzfes;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpgs:I

    return v1
.end method

.method final zzd(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzfhh;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzho()I
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/zzfio;->zzpgs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzfio;->count:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkq:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/zzfge;->zzcyf()Lcom/google/android/gms/internal/zzfgf;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_0
    invoke-static {v3}, Lcom/google/android/gms/internal/zzffg;->zzlg(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfio;->zzho()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/zzfes;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzffg;->zzc(ILcom/google/android/gms/internal/zzfes;)I

    move-result v2

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/zzffg;->zze(IJ)I

    move-result v2

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/zzffg;->zzd(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfio;->zzpkr:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzffg;->zzaf(II)I

    move-result v2

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/google/android/gms/internal/zzfio;->zzpgs:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
