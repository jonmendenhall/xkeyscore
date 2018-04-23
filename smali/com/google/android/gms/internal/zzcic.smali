.class public final Lcom/google/android/gms/internal/zzcic;
.super Ljava/lang/Object;


# instance fields
.field private mValue:Ljava/lang/String;

.field private final zzbhb:Ljava/lang/String;

.field private zzjdl:Z

.field private synthetic zzjdm:Lcom/google/android/gms/internal/zzchx;

.field private final zzjdr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzchx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcic;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcic;->zzbhb:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcic;->zzjdr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzazr()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcic;->zzjdl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcic;->zzjdl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcic;->zzbhb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->mValue:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjq(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->mValue:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcic;->zzbhb:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcic;->mValue:Ljava/lang/String;

    return-void
.end method
