.class public final Lcom/google/android/gms/internal/zzebi;
.super Ljava/lang/Object;


# instance fields
.field private final zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmnp:Lcom/google/android/gms/internal/zzebg;

.field private final zzmnq:Lcom/google/android/gms/internal/zzejd;

.field private final zzmnr:Z

.field private final zzmns:Ljava/lang/String;

.field private final zzmnt:Ljava/lang/String;

.field private final zzmnu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzejd;Lcom/google/android/gms/internal/zzebg;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebi;->zzmnq:Lcom/google/android/gms/internal/zzejd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzebi;->zzmnp:Lcom/google/android/gms/internal/zzebg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzebi;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzebi;->zzmnr:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzebi;->zzmns:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzebi;->zzmnt:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzebi;->zzmnu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isPersistenceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzebi;->zzmnr:Z

    return v0
.end method

.method public final zzbub()Lcom/google/android/gms/internal/zzejd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebi;->zzmnq:Lcom/google/android/gms/internal/zzejd;

    return-object v0
.end method

.method public final zzbuc()Lcom/google/android/gms/internal/zzebg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebi;->zzmnp:Lcom/google/android/gms/internal/zzebg;

    return-object v0
.end method

.method public final zzbud()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebi;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final zzbue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebi;->zzmns:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbuf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebi;->zzmnt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbug()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebi;->zzmnu:Ljava/lang/String;

    return-object v0
.end method
