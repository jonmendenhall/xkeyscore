.class public final Lcom/google/android/gms/internal/zzchz;
.super Ljava/lang/Object;


# instance fields
.field private final zzbhb:Ljava/lang/String;

.field private zzfmd:Z

.field private final zzjdk:Z

.field private zzjdl:Z

.field private synthetic zzjdm:Lcom/google/android/gms/internal/zzchx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzchx;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchz;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchz;->zzbhb:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzchz;->zzjdk:Z

    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchz;->zzjdl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchz;->zzjdl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchz;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchz;->zzbhb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzchz;->zzjdk:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzchz;->zzfmd:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchz;->zzfmd:Z

    return v0
.end method

.method public final set(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchz;->zzjdm:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchx;->zza(Lcom/google/android/gms/internal/zzchx;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchz;->zzbhb:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzchz;->zzfmd:Z

    return-void
.end method
