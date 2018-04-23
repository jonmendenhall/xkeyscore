.class public final Lcom/google/android/gms/internal/zzfep;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfep$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzfep;",
        "Lcom/google/android/gms/internal/zzfep$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static volatile zzbbk:Lcom/google/android/gms/internal/zzfhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfhk<",
            "Lcom/google/android/gms/internal/zzfep;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpff:Lcom/google/android/gms/internal/zzfep;


# instance fields
.field private zzlwa:Ljava/lang/String;

.field private zzlwb:Lcom/google/android/gms/internal/zzfes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfep;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfep;->zzpff:Lcom/google/android/gms/internal/zzfep;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzfes;->zzpfg:Lcom/google/android/gms/internal/zzfes;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    return-void
.end method

.method public static zzcvk()Lcom/google/android/gms/internal/zzfep;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfep;->zzpff:Lcom/google/android/gms/internal/zzfep;

    return-object v0
.end method

.method static synthetic zzcvl()Lcom/google/android/gms/internal/zzfep;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfep;->zzpff:Lcom/google/android/gms/internal/zzfep;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/zzfeq;->zzbbi:[I

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
    return-object v0

    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/zzfep;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/android/gms/internal/zzfep;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/zzfep;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzffu$zzb;

    sget-object p3, Lcom/google/android/gms/internal/zzfep;->zzpff:Lcom/google/android/gms/internal/zzfep;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzffu$zzb;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    sput-object p2, Lcom/google/android/gms/internal/zzfep;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

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
    sget-object p1, Lcom/google/android/gms/internal/zzfep;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/google/android/gms/internal/zzffb;

    check-cast p3, Lcom/google/android/gms/internal/zzffm;

    if-nez p3, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_2
    move p1, v2

    :cond_3
    :goto_1
    if-nez p1, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvt()I

    move-result p3

    if-eqz p3, :cond_8

    const/16 v0, 0xa

    if-eq p3, v0, :cond_7

    const/16 v0, 0x12

    if-eq p3, v0, :cond_6

    and-int/lit8 v0, p3, 0x7

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    move p3, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-static {}, Lcom/google/android/gms/internal/zzfio;->zzczu()Lcom/google/android/gms/internal/zzfio;

    move-result-object v3

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzfio;->zzczv()Lcom/google/android/gms/internal/zzfio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0, p3, p2}, Lcom/google/android/gms/internal/zzfio;->zzb(ILcom/google/android/gms/internal/zzffb;)Z

    move-result p3

    :goto_2
    if-nez p3, :cond_3

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcwb()Lcom/google/android/gms/internal/zzfes;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcwa()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    move p1, v1

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
    sget-object p1, Lcom/google/android/gms/internal/zzfep;->zzpff:Lcom/google/android/gms/internal/zzfep;

    return-object p1

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzffu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzfep;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    iget-object v3, p3, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    iget-object v4, p3, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    sget-object v0, Lcom/google/android/gms/internal/zzfes;->zzpfg:Lcom/google/android/gms/internal/zzfes;

    if-eq p1, v0, :cond_a

    move p1, v1

    goto :goto_5

    :cond_a
    move p1, v2

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    iget-object v3, p3, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    sget-object v4, Lcom/google/android/gms/internal/zzfes;->zzpfg:Lcom/google/android/gms/internal/zzfes;

    if-eq v3, v4, :cond_b

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_6
    iget-object p3, p3, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(ZLcom/google/android/gms/internal/zzfes;ZLcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    return-object p0

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/zzfep$zza;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzfep$zza;-><init>(Lcom/google/android/gms/internal/zzfeq;)V

    return-object p1

    :pswitch_7
    return-object v0

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/zzfep;->zzpff:Lcom/google/android/gms/internal/zzfep;

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/google/android/gms/internal/zzfep;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzfep;-><init>()V

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzffg;->zzn(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzffg;->zza(ILcom/google/android/gms/internal/zzfes;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfio;->zza(Lcom/google/android/gms/internal/zzffg;)V

    return-void
.end method

.method public final zzho()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzfep;->zzpgs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfep;->zzlwa:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzffg;->zzo(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfep;->zzlwb:Lcom/google/android/gms/internal/zzfes;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzffg;->zzc(ILcom/google/android/gms/internal/zzfes;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfep;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzho()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/zzfep;->zzpgs:I

    return v1
.end method
