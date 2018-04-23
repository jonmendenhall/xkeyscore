.class public Lcom/google/android/gms/internal/zzeja;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzejd;


# instance fields
.field private final zznbj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zznbk:Lcom/google/android/gms/internal/zzeje;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeje;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeje;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznbj:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeja;->zznbj:Ljava/util/Set;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzeja;->zznbk:Lcom/google/android/gms/internal/zzeje;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzeje;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    const/4 v0, 0x6

    add-int/2addr v0, p5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/2addr v0, p5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/2addr v0, p5

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/2addr v0, p5

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ["

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzeje;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeja;->zznbk:Lcom/google/android/gms/internal/zzeje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznbj:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/zzeje;->zznbm:Lcom/google/android/gms/internal/zzeje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznbj:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/zzeja;->zza(Lcom/google/android/gms/internal/zzeje;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/google/android/gms/internal/zzejb;->zzmqn:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result p1

    aget p1, p4, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Should not reach here!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzeja;->zzbj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzeja;->zzbi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzeja;->zzbh(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzeja;->zzbg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected zzbg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected zzbh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected zzbi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected zzbj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final zzbvy()Lcom/google/android/gms/internal/zzeje;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznbk:Lcom/google/android/gms/internal/zzeje;

    return-object v0
.end method
