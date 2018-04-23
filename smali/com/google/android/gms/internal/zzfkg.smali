.class public final Lcom/google/android/gms/internal/zzfkg;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfkg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzfkg;",
        "Lcom/google/android/gms/internal/zzfkg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static volatile zzbbk:Lcom/google/android/gms/internal/zzfhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfhk<",
            "Lcom/google/android/gms/internal/zzfkg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzppn:Lcom/google/android/gms/internal/zzfkg;


# instance fields
.field private zzlwy:I

.field private zzppk:I

.field private zzppl:Ljava/lang/String;

.field private zzppm:Lcom/google/android/gms/internal/zzfgd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfgd<",
            "Lcom/google/android/gms/internal/zzfep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfkg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfkg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfkg;->zzppn:Lcom/google/android/gms/internal/zzfkg;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzfkg;->zzcxo()Lcom/google/android/gms/internal/zzfgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    return-void
.end method

.method public static zzdap()Lcom/google/android/gms/internal/zzfkg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfkg;->zzppn:Lcom/google/android/gms/internal/zzfkg;

    return-object v0
.end method

.method static synthetic zzdaq()Lcom/google/android/gms/internal/zzfkg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfkg;->zzppn:Lcom/google/android/gms/internal/zzfkg;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzfkh;->zzbbi:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v2

    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/zzfkg;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/android/gms/internal/zzfkg;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/zzfkg;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzffu$zzb;

    sget-object p3, Lcom/google/android/gms/internal/zzfkg;->zzppn:Lcom/google/android/gms/internal/zzfkg;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzffu$zzb;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    sput-object p2, Lcom/google/android/gms/internal/zzfkg;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzfkg;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/google/android/gms/internal/zzffb;

    check-cast p3, Lcom/google/android/gms/internal/zzffm;

    if-nez p3, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvt()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v2, 0x8

    if-eq p1, v2, :cond_7

    const/16 v2, 0x12

    if-eq p1, v2, :cond_6

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzffu;->zza(ILcom/google/android/gms/internal/zzffb;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfgd;->zzcvi()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfgd;->size()I

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0xa

    goto :goto_2

    :cond_4
    shl-int/lit8 v2, v2, 0x1

    :goto_2
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzfgd;->zzly(I)Lcom/google/android/gms/internal/zzfgd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    invoke-static {}, Lcom/google/android/gms/internal/zzfep;->zzcvk()Lcom/google/android/gms/internal/zzfep;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/android/gms/internal/zzffb;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzffu;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzfep;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzfgd;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcwa()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvw()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppk:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/android/gms/internal/zzfge;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    throw p1

    :cond_9
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/zzfkg;->zzppn:Lcom/google/android/gms/internal/zzfkg;

    return-object p1

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzffu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzfkg;

    iget p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    if-eqz p1, :cond_a

    move p1, v1

    goto :goto_5

    :cond_a
    move p1, v0

    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    iget v3, p3, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    if-eqz v3, :cond_b

    move v0, v1

    :cond_b
    iget v3, p3, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    invoke-interface {p2, p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    iget-object v0, p3, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(Lcom/google/android/gms/internal/zzfgd;Lcom/google/android/gms/internal/zzfgd;)Lcom/google/android/gms/internal/zzfgd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzf;->zzphb:Lcom/google/android/gms/internal/zzffu$zzf;

    if-ne p2, p1, :cond_c

    iget p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzlwy:I

    iget p2, p3, Lcom/google/android/gms/internal/zzfkg;->zzlwy:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzlwy:I

    :cond_c
    return-object p0

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/zzfkg$zza;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/zzfkg$zza;-><init>(Lcom/google/android/gms/internal/zzfkh;)V

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfgd;->zzbiy()V

    return-object v2

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/zzfkg;->zzppn:Lcom/google/android/gms/internal/zzfkg;

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/google/android/gms/internal/zzfkg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzfkg;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzffg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzffg;->zzaa(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzffg;->zzn(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfgd;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzfgd;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzfhe;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzffg;->zza(ILcom/google/android/gms/internal/zzfhe;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfio;->zza(Lcom/google/android/gms/internal/zzffg;)V

    return-void
.end method

.method public final zzho()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzpgs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzppk:I

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzffg;->zzad(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfkg;->zzppl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzffg;->zzo(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfgd;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfkg;->zzppm:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/zzfgd;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzfhe;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzffg;->zzc(ILcom/google/android/gms/internal/zzfhe;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkg;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfio;->zzho()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzfkg;->zzpgs:I

    return v0
.end method
