.class public final Lcom/google/android/gms/internal/zzcup;
.super Ljava/lang/Object;


# instance fields
.field private final zzjxi:Ljava/lang/String;

.field private final zzjxj:Landroid/net/Uri;

.field private final zzjxk:Ljava/lang/String;

.field private final zzjxl:Ljava/lang/String;

.field private final zzjxm:Z

.field private final zzjxn:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 7

    const-string v3, ""

    const-string v4, ""

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcup;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcup;->zzjxi:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcup;->zzjxj:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcup;->zzjxk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcup;->zzjxl:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzcup;->zzjxm:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcup;->zzjxn:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcup;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcup;->zzjxi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcup;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcup;->zzjxj:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcup;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcup;->zzjxk:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcup;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcup;->zzjxl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzcup;->zzjxn:Z

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzcup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzcup;->zzjxm:Z

    return p0
.end method


# virtual methods
.method public final zzaw(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcui;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzcui<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzcui;->zzb(Lcom/google/android/gms/internal/zzcup;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcui;

    move-result-object p1

    return-object p1
.end method

.method public final zzku(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcup;
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcup;->zzjxm:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set GServices prefix and skip GServices"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzcup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcup;->zzjxi:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcup;->zzjxj:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcup;->zzjxl:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzcup;->zzjxm:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzcup;->zzjxn:Z

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcup;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public final zzkv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcup;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/zzcup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcup;->zzjxi:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcup;->zzjxj:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcup;->zzjxk:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzcup;->zzjxm:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzcup;->zzjxn:Z

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcup;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method
