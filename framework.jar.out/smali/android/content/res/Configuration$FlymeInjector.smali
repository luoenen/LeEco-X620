.class final Landroid/content/res/Configuration$FlymeInjector;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final FONT_CHANGED_UNDEFINED:I = 0x0

.field private static final THEME_CHANGED_UNDEFINED:I = 0x0

.field private static final XML_ATTR_FONT_CHANGED:Ljava/lang/String; = "fontChanged"

.field private static final XML_ATTR_THEME_CHANGED:Ljava/lang/String; = "themeChanged"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "that"    # Landroid/content/res/Configuration;
    .param p2, "n"    # I

    .prologue
    .line 2132
    if-eqz p2, :cond_0

    return p2

    .line 2133
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/ConfigurationExt;->compareTo(Landroid/content/res/flymetheme/ConfigurationExt;)I

    move-result v0

    return v0
.end method

.method static diff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "changed"    # I

    .prologue
    .line 2119
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/ConfigurationExt;->diff(Landroid/content/res/flymetheme/ConfigurationExt;)I

    move-result v0

    or-int/2addr v0, p2

    return v0
.end method

.method static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;
    .param p2, "delta"    # Landroid/content/res/Configuration;

    .prologue
    .line 2144
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-eq v0, v1, :cond_0

    .line 2145
    iget-object v0, p2, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 2147
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-eq v0, v1, :cond_1

    .line 2148
    iget-object v0, p2, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 2142
    :cond_1
    return-void
.end method

.method static hashCode(Landroid/content/res/Configuration;I)I
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "result"    # I

    .prologue
    .line 2138
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0, p1}, Landroid/content/res/flymetheme/ConfigurationExt;->hashCode(I)I

    move-result v0

    return v0
.end method

.method static initFlymeExtraFields(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2107
    new-instance v0, Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-direct {v0}, Landroid/content/res/flymetheme/ConfigurationExt;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    .line 2105
    return-void
.end method

.method static initFlymeExtraFields(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "o"    # Landroid/content/res/Configuration;

    .prologue
    .line 2101
    new-instance v0, Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-direct {v0, v1}, Landroid/content/res/flymetheme/ConfigurationExt;-><init>(Landroid/content/res/flymetheme/ConfigurationExt;)V

    iput-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    .line 2099
    return-void
.end method

.method static readFromParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2128
    const-class v0, Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/flymetheme/ConfigurationExt;

    iput-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    .line 2127
    return-void
.end method

.method static readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configOut"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 2154
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    const-string/jumbo v1, "themeChanged"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 2155
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    const-string/jumbo v1, "fontChanged"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 2153
    return-void
.end method

.method static updateFrom(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "changed"    # I

    .prologue
    .line 2113
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/ConfigurationExt;->updateFrom(Landroid/content/res/flymetheme/ConfigurationExt;)I

    move-result v0

    or-int/2addr v0, p2

    return v0
.end method

.method static writeToParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;I)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2124
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2123
    return-void
.end method

.method static writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2159
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-eqz v0, :cond_0

    .line 2160
    const-string/jumbo v0, "themeChanged"

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2162
    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-eqz v0, :cond_1

    .line 2163
    const-string/jumbo v0, "fontChanged"

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2158
    :cond_1
    return-void
.end method
