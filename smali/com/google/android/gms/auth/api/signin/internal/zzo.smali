.class public final Lcom/google/android/gms/auth/api/signin/internal/zzo;
.super Ljava/lang/Object;


# static fields
.field private static zzeif:Lcom/google/android/gms/auth/api/signin/internal/zzo;


# instance fields
.field private zzeig:Lcom/google/android/gms/auth/api/signin/internal/zzz;

.field private zzeih:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private zzeii:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzz;->zzbt(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeig:Lcom/google/android/gms/auth/api/signin/internal/zzz;

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeig:Lcom/google/android/gms/auth/api/signin/internal/zzz;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzz;->zzabt()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeih:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeig:Lcom/google/android/gms/auth/api/signin/internal/zzz;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzz;->zzabu()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeii:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized zzbr(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zzo;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzbs(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zzbs(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;
    .locals 2

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zzo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeif:Lcom/google/android/gms/auth/api/signin/internal/zzo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zzo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeif:Lcom/google/android/gms/auth/api/signin/internal/zzo;

    :cond_0
    sget-object p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeif:Lcom/google/android/gms/auth/api/signin/internal/zzo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeig:Lcom/google/android/gms/auth/api/signin/internal/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzz;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeih:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeii:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeig:Lcom/google/android/gms/auth/api/signin/internal/zzz;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "defaultGoogleSignInAccount"

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzaba()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zzz;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzz;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeih:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeii:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzabl()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeih:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzabm()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzeii:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
